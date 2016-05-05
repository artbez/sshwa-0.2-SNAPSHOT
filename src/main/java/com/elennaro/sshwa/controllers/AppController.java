package com.elennaro.sshwa.controllers;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.MessageSource;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.elennaro.sshwa.dao.Car;
import com.elennaro.sshwa.dao.CarDao;

@Controller
public class AppController {
	     
    @Autowired
    MessageSource messageSource;
    
    @Autowired
    private CarDao carDao;
	
    @RequestMapping(value = "/imageController/{imageId}", method = RequestMethod.GET, produces = MediaType.IMAGE_JPEG_VALUE)
    @ResponseBody
    public byte[] testImage(@PathVariable long imageId)  {
      List<Car> mList = carDao.list();
      byte[] image = null;
      for (int i = 0; i < mList.size(); ++i) {
    	  if (mList.get(i).getId() == imageId)
    		  image = mList.get(i).getImage();
      }  
      return image;
    }
    
	@RequestMapping(value = {"/", "/helloworld**"}, method = {RequestMethod.GET})
	public ModelAndView welcomePage() {
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Tutorial");
		model.addObject("message", "Welcome Page !");
		model.setViewName("helloworld");
		return model;
	}

	@RequestMapping(value = "/protected**", method = RequestMethod.GET)
	public ModelAndView protectedPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security 3.2.4 Hello World Tutorial");
		model.addObject("message", "This is protected page - Only for Admin Users!");
		model.setViewName("protected");
		return model;

	}

	@RequestMapping(value = "/confidential**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security 3.2.4 Hello World Tutorial");
		model.addObject("message", "This is confidential page - Need Super Admin Role!");
		model.setViewName("protected");

		return model;

	}

	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "helloworld";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	}
	
	@RequestMapping(value = "/protected/addCar", method = RequestMethod.GET)
	public ModelAndView addCar() {
	    return new ModelAndView("addcar", "car", new Car());
	}
	
	
	
	@RequestMapping(value = "/getCurrentCar", method = RequestMethod.POST)
	public String getCurrentCar(@ModelAttribute("SpringWeb") Car car, ModelMap model, @RequestParam CommonsMultipartFile fileUpload) {
		car.setImage(fileUpload.getBytes());
		carDao.saveOrUpdate(car);
		model.addAttribute("carMake", car.getCarMake());
	    model.addAttribute("mileage", car.getMileage());
	    model.addAttribute("year", car.getYear());
	    model.addAttribute("price", car.getPrice());
	    return "result";
	}
	
	@RequestMapping(value = "/forall/seeCars", method = RequestMethod.GET)
	public ModelAndView seeCars() {
		List<Car> mList = carDao.list();
	    return new ModelAndView("seecars", "cars", mList);
	}
	
	@RequestMapping(value = "/protected/deleteCar", method = RequestMethod.GET)
	public ModelAndView deleteCar() {
		return new ModelAndView("deletecar");
	}
	
	@RequestMapping(value = "/deleteCurCar", method = RequestMethod.POST)
	public String getCurrentCar(@RequestParam int carId, ModelMap model) {
		carDao.delete(carId);
		return "helloworld";
	}
}
