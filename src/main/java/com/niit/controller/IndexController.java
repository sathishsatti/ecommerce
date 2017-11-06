package com.niit.controller;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.ProductDao;
import com.niit.dao.UserDAO;
import com.niit.model.User;


@Controller
public class IndexController

{
	

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	ProductDao productDao;

	@RequestMapping(value="/",method=RequestMethod.GET)
	public String showIndex(Model model) 
	{
		model.addAttribute("pList",productDao.retrieveProduct());
		return "Welcome";

	}

	@RequestMapping("/registration")
	public String goToRegisterPage(@ModelAttribute("user") User user,Model model)
	{
	
		model.addAttribute("user",new User());
	
		return "register";


	}

	@RequestMapping("/saveUser")
	public String createUser(@Valid @ModelAttribute("user") User user,BindingResult result)
	
		{
			if (result.hasErrors()) {
				 
			   return "/register";
			 
			}
		user.setRole("ROLE_USER");
		user.setEnabled(true);
		userDAO.saveUser(user);
		return "Welcome";
	}


}