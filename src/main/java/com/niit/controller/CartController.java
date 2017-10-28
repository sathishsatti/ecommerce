package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.dao.CartDAO;
import com.niit.dao.ProductDao;
import com.niit.model.Cart;
import com.niit.model.Product;

@Controller
public class CartController
{
	
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDao productDao;
	

	  @RequestMapping(value="addToCart/{id}")
	    public String addProductToCart(@PathVariable("id") int id, HttpSession session,Model model,RedirectAttributes attributes)
	    {
	    	int userId = (Integer) session.getAttribute("userid");
	    	int q=1;
	    	if (cartDAO.getitem(id, userId) != null) {
				Cart item = cartDAO.getitem(id, userId);
				
				item.setProductQuantity(item.getProductQuantity() + q);
				
				Product p = productDao.getProduct(id);
				
				System.out.println(item);
				item.setPrice(p.getPrice());
				item.setSubTotal(item.getProductQuantity() *p.getPrice());
				cartDAO.saveProductToCart(item);
				attributes.addFlashAttribute("ExistingMessage",  p.getProductName() +"is already exist");
		
				return "redirect:/";
			} else {
				Cart item = new Cart();
				Product p = productDao.getProduct(id);
				item.setProductId(p.getProductId());
				item.setProductName(p.getProductName());
				item.setUserId(userId);
				item.setProductQuantity(q);
				item.setSubTotal(q * p.getPrice());
				item.setPrice(p.getPrice());
				cartDAO.saveProductToCart(item);
				attributes.addFlashAttribute("SuccessMessage", "Item"+p.getProductName()+" has been deleted Successfully");
				return "redirect:/";
			}
	    	
	    }
	   
	  @RequestMapping("cart")
		public String viewCart(Model model, HttpSession session) {
	    	
			//int userId = (Integer) session.getAttribute("userid");
			model.addAttribute("CartList", cartDAO.listCart());
			 if(cartDAO.cartsize((Integer) session.getAttribute("userid"))!=0){
				
				model.addAttribute("CartPrice", cartDAO.CartPrice((Integer) session.getAttribute("userid")));
			} else {
				model.addAttribute("EmptyCart", "true");
			}
			model.addAttribute("IfcartClicked", "true");
		//	model.addAttribute("HideOthers", "true");
			return "Cart";
		}


	

}
