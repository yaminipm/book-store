package com.niit.bookshopbackend.dao;

import java.util.List;

import com.niit.bookshopbackend.model.Product;

public interface ProductDAO {
	
	public List<Product> listProducts();
	public Product getProductById(int id);
	public void addProduct(Product product);
	public void updateProduct(Product product);
	public void deleteProduct(Product product);
	public List<Product> getProductsByCategory(String category);

}
