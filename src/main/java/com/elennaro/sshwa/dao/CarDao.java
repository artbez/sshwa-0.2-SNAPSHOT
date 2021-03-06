package com.elennaro.sshwa.dao;

import java.util.List;

public interface CarDao {
    public List<Car> list();
     
    public Car get(int id);
     
    public void saveOrUpdate(Car car);
     
    public void delete(int id);
}