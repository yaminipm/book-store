package com.niit.bookshopbackend.dao;

import com.niit.bookshopbackend.model.Cart;

public interface CartDAO {

	public void addCart(Cart cart);
	public void updateCart(Cart cart);
	public Cart getCartById(int cartId);
}

