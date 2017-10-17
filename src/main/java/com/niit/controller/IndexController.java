package com.niit.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.UserDAO;
import com.niit.model.User;


@Controller
public class IndexController
{
	

@Autowired
private UserDAO userDAO;
	
@RequestMapping("/")
public String index()
{
	return "index";
}

@RequestMapping("/registration")
public String goToRegisterPage(@ModelAttribute("user") User user,Model model)
{
	
	model.addAttribute("user",new User());
	
	return "register";


}

@RequestMapping("/saveUser")
public String createUser(@ModelAttribute("user") User user)
{
 
	user.setRole("ROLE_USER");
	user.setEnabled(true);
	userDAO.saveUser(user);
	return "index";
}


}