package com.niit.onlinebook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bookshopbackend.dao.ProductDAO;

@Controller
public class HomeController {
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/")
	public ModelAndView showDefault()
	{
		ModelAndView model=new ModelAndView("index");
		return model;
	}
		
	/*@RequestMapping("/Register")
	public ModelAndView registerPage()
	{
		ModelAndView model=new ModelAndView("register");
		return model;
	}
		
	@RequestMapping("/Login")
	public ModelAndView loginrPage()
	{
		ModelAndView model=new ModelAndView("login");
		return model;
	}
	@RequestMapping("/Product")
	public ModelAndView productPage()
	{
		List<Product> products=productDAO.listProducts();
		String json=new Gson().toJson(products);
		ModelAndView model=new ModelAndView("product");
		model.addObject("productData", json);
		return model;
	}
		
	@RequestMapping("/Product/{category}")
	public ModelAndView productCategoryPage(@PathVariable("category") String category)
	{
		List<Product> products=productDAO.getProductsByCategory(category);
		String json=new Gson().toJson(products);
		ModelAndView model=new ModelAndView("product");
		model.addObject("productData", json);
		return model;
	}
		
	@RequestMapping("/ProductDetails/{productId}")
	public ModelAndView productDetailsPage(@PathVariable("productId") int productId)
	{
		Product product=productDAO.getProductById(productId);
		ModelAndView model=new ModelAndView("ProductDetails");
		model.addObject("product", product);
		return model;
		
		
	}*/
}

