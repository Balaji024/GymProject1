package com.gym.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gym.model.Customer;
import com.gym.service.CustomerService;
@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	@RequestMapping(value="/registrationform") 	
	public    ModelAndView  getRegistrationForm(){
		return new ModelAndView("RegistrationForm","customer",new Customer());
	}
	@RequestMapping(value="/all/registercustomer")
	public String registerCustomer(@Valid @ModelAttribute Customer customer,BindingResult result,Model model){
		if(result.hasErrors())//hibernate validation

			return "Register";
		if(!customerService.isUsernameValid(customer.getUser().getUsername())){//duplicate username
			model.addAttribute("duplicateUsername","Username already exists.. please enter different username");
			return "RegistrationForm";
		}
		if(!customerService.isEmailValid(customer.getEmail())){//duplicate email address
			model.addAttribute("duplicateEmail","Email Id already exists.. Please enter different email address");
			return "RegistrationForm";
		}
		
		customerService.registerCustomer(customer);//valid 
		return "Login";
	}

}


