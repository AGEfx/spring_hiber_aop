package com.example.spring;

import com.example.spring.DAO.CarDAO;
import com.example.spring.Service.CarService;
import com.example.spring.entity.Car;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@org.springframework.stereotype.Controller
public class Controller {

    @Autowired
    private CarService carService;

    @RequestMapping("/")
    public String getAllCars(Model model){
        List<Car> cars = carService.getAllCars();

        model.addAttribute("cars",cars);

        return "show-cars";
    }

    @RequestMapping("/add")
    public String addNewCar(Model model){
        Car car = new Car();
        model.addAttribute("car",car);
        return "add-new-car";
    }

    @RequestMapping("/saveCar")
    public String saveCar(@ModelAttribute("car") Car car){
        carService.saveCar(car);
        return "redirect:/";
    }

    @RequestMapping("/updateCar")
    public String updateCar(@RequestParam("id") int id, Model model){
        Car car = carService.getCar(id);
        model.addAttribute("car", car);
        return "add-new-car";
    }

    @RequestMapping("/deleteCar")
    public String deleteCar(@RequestParam("id") int id){
        carService.deleteCar(id);
        return "redirect:/";
    }


}
