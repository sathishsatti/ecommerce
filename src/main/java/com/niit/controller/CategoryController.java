package com.niit.controller;

	import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;
	 
	@Controller
	public class CategoryController 
	{
	   
		@Autowired
	    CategoryDAO categoryDAO;
	    
		
		
	    @RequestMapping(value="AddCategory",method=RequestMethod.POST)
	    public String addCategory(@Valid  @ModelAttribute("category")Category category,Model m,BindingResult result)
	    {
	    	if (result.hasErrors()) {
				 
				   return "/category";
	    	}
	        categoryDAO.addCategory(category);
	            
	        return "redirect:category";
	    }
	    
	    
	     
	    @RequestMapping(value="category",method=RequestMethod.GET)
	    public String showCategory(@ModelAttribute("category")Category category,Model m)
	    { 
	        List<Category> listCategory=categoryDAO.retrieveCategory();
	    
	        m.addAttribute("categoryList",listCategory);
	        return "Category";
	    }
	     
	    
	    
	    @RequestMapping(value="editCategory/{catId}",method=RequestMethod.GET)
	    public String updateCategory(@PathVariable("catId") int catId,Model m,RedirectAttributes attributes)
	    {
	       // m.addAttribute("category", categoryDAO.getCategory(catId));
	        
	        attributes.addFlashAttribute("category", this.categoryDAO.getCategory(catId));
	    	return "redirect:/category";
	    }
	     
	    
	    
	    @RequestMapping(value="deleteCategory/{catId}",method=RequestMethod.GET)
	    public String deleteCategory(@PathVariable("catId")int catId,Model m,RedirectAttributes attributes)
	    {
	    	m.addAttribute("category", categoryDAO.deleteCategory(catId));
	    	
	    	return "redirect:/category";
	    }
	}

