package com.dangtruong.service;

import java.util.List;

import com.dangtruong.entity.Account;
import com.dangtruong.entity.Order;
import com.fasterxml.jackson.databind.JsonNode;


public interface OrderService {
    
    Order create(JsonNode orderData);
    
    Order create2(JsonNode orderData, Account acc);

    Order findById(Long id);

    List<Order> findAllByConfirm();

    List<Order> findAllByConfirmNotNull();
    
    List<Order> findByUsername(String username);

	void delete(Long id);

    void confirm(Long id);

    Order findOne(Long id);
}
