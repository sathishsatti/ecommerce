package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.dao.SupplierDao;
import com.niit.model.Supplier;
@Controller
public class SupplierController 
{
	@Autowired
    SupplierDao supplierDao;
	

    @RequestMapping(value="AddSupplier",method=RequestMethod.POST)
    public String addSupplier(@ModelAttribute("supplier")Supplier supplier,Model m)
    {
        supplierDao.addSupplier(supplier);
         
         
        return "redirect:supplier";
    }
    
    
    
     
    @RequestMapping(value="supplier",method=RequestMethod.GET)
    public String showSupplier(@ModelAttribute("supplier")Supplier supplier,Model m)
    {
       //m.addAttribute("Supplier",supplier);
         
        List<Supplier> listSupplier=supplierDao.retrieveSupplier();
        m.addAttribute("supplierList",listSupplier);
        return "Supplier";
    }
    
    
     
    
    @RequestMapping(value="updateSupplier/{supplierId}",method=RequestMethod.GET)
    public String updateSupplier(@PathVariable("supplierid") int supplierId,Model m,RedirectAttributes attributes)
    {
      
        
        attributes.addFlashAttribute("supplierid", this.supplierDao.getSupplier(supplierId));
    	return "redirect:/supplier";
    }
     
    
    
    @RequestMapping(value="deleteSupplier/{supplierId}",method=RequestMethod.GET)
    public String deleteSupplier(@PathVariable("supplierId")int supplierId,Model m,RedirectAttributes attributes)
    {
    	m.addAttribute("supplier", supplierDao.deleteSupplier(supplierId));
    	
    	return "redirect:/supplier";
    }
}




