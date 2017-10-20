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
         
        List<Supplier> listSupplier=supplierDao.retrieveSupplier();
        m.addAttribute("supplierList",listSupplier);
         
        return "Supplier";
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
    public String updateSupplier(@PathVariable("supplierId") int supplierId,Model m)
    {
        Supplier supplier=supplierDao.getSupplier(supplierId);
        m.addAttribute("Supplier",supplier);
         
        List<Supplier> listSupplier=supplierDao.retrieveSupplier();
        m.addAttribute("supplierList",listSupplier);
        return "Supplier";
    }
     
    @RequestMapping(value="deleteSupplier/{supplierId}",method=RequestMethod.GET)
    public String deleteSupplier(@PathVariable("supplierId")int supplierId,Model m)
    {
        Supplier supplier=supplierDao.getSupplier(supplierId);
        supplierDao.deleteSupplier(supplier);
        List<Supplier> listSupplier=supplierDao.retrieveSupplier();
        m.addAttribute("supplierList",listSupplier);
        return "Supplier";
    }
}



