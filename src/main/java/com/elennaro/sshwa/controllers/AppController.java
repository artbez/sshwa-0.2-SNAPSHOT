package com.elennaro.sshwa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.MessageSource;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.elennaro.sshwa.dao.Car;
import com.elennaro.sshwa.dao.CarDao;

@Controller
public class AppController {
	     
    @Autowired
    MessageSource messageSource;
    
    @Autowired
    private CarDao carDao;
	
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
	
	@RequestMapping(value = "/addCar", method = RequestMethod.GET)
	public ModelAndView addCar() {
	    return new ModelAndView("addcar", "car", new Car());
	}
	
	@RequestMapping(value = "/getCurrentCar", method = RequestMethod.POST)
	public String getCurrentCar(@ModelAttribute("SpringWeb") Car car, ModelMap model) {
		carDao.saveOrUpdate(car);
		model.addAttribute("carMake", car.getCarMake());
	    model.addAttribute("mileage", car.getMileage());
	    model.addAttribute("year", car.getYear());
	    model.addAttribute("price", car.getPrice());
	    return "result";
	}
}
