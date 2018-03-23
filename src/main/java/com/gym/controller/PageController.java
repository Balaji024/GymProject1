package com.gym.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gym.model.Category;
import com.gym.service.CategoryService;
import com.gym.service.ProductService;

@Controller
public class PageController {
	public PageController(){

		System.out.println("HomeController is instantiated");

	}
@Autowired
private CategoryService categoryservice;
	@Autowired

	private ProductService productService;

	@RequestMapping(value="/home")

	public String homePage(HttpSession session){

			session.setAttribute("categories", productService.listProducts());

		return "home";//logical view name

	}

	@RequestMapping("/aboutus")

public String aboutUs(){

	return "aboutus";

}

	

	//for logout -> /login?logout=''

	//for invalid credentials -> /login?error=''

	@RequestMapping("/login")

	public String loginPage(@RequestParam(required=false) String error,@RequestParam(required=false) String logout,Model model){

		if(error!=null)

		model.addAttribute("error","Invalid Username/Password");

		if(logout!=null)

			model.addAttribute("msg","Loggedout successfully");

		return "Login";

	}
	/*@RequestMapping("/")
	public String showHomePage()
	{
		return "index";
	}
	
	@RequestMapping("/login")
	public String showLogin()
	{
		return "Login";
	}*/
	
	@RequestMapping("/contactus")
	public String showAboutUs()
	{
		return "ContactUs";
	}
	
	@RequestMapping("/register")
	public String showRegister()
	{
		return "Register";
	}
	@RequestMapping("/Home")
	public String showHome(Model m)
	{
		List<Category> listcategory = categoryservice.listCategories();
		m.addAttribute("categories", listcategory);
		return "Home";
	}
	@RequestMapping("/LandingPage")

	public String Page(Model m){

		System.out.println("this method is triggered");

		List<Category> listcategory = categoryservice.listCategories();

		System.out.println(listcategory);

		m.addAttribute("categories", listcategory);

		/*m.addAttribute("categories",categoryservice.getCategories());*/

		return "Home";

	}
}

