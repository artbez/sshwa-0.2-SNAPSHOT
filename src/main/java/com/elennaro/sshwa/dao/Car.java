package com.elennaro.sshwa.dao;

import javax.persistence.*;

@Entity
@Table(name = "CAR")
public class Car {
    @Id 
    @GeneratedValue
    @Column(name = "id")
    private int id;

    @Column(name = "car_make")
    private String carMake;

    @Column(name = "mileage")
    private int mileage;
    
    @Column(name = "year")
    private int year;

    @Column(name = "price")
    private int price;

    public Car() {}
    public int getId() {
        return id;
    }
    public void setId( int id ) {
        this.id = id;
    }
    public String getCarMake() {
        return carMake;
    }
    public void setCarMake( String carMake ) {
        this.carMake = carMake;
    }
    public int getMileage() {
        return mileage;
    }
    public void setMileage( int mileage ) {
        this.mileage = mileage;
    }
    public int getYear() {
        return year;
    }
    public void setYear( int year ) {
        this.year = year;
    }
    public int getPrice() {
        return price;
    }
    public void setPrice( int price ) {
        this.price = price;
    }
}