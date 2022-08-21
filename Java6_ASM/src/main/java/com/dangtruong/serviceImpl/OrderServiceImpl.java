package com.dangtruong.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangtruong.entity.*;
import com.dangtruong.dao.OrderDAO;
import com.dangtruong.dao.OrderDetailDAO;
import com.dangtruong.service.OrderService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    OrderDAO dao;

    @Autowired
    OrderDetailDAO oddao;

    @Override
    public Order create(JsonNode orderData) {
        ObjectMapper mapper =  new ObjectMapper();

        Order order =  mapper.convertValue(orderData, Order.class);
        dao.save(order);

        TypeReference<List<OrderDetail>> type = new TypeReference<List<OrderDetail>>(){};
        List<OrderDetail> details = mapper.convertValue(orderData.get("orderDetails"), type)
        .stream().peek(d-> d.setOrder(order)).collect(Collectors.toList());
        oddao.saveAll(details);


        return order;
    }

    @Override
    public Order findById(Long id) {
        return dao.findById(id).get();
    }

    @Override
    public List<Order> findByUsername(String username) {
        return dao.findByUsername(username);
    }

	@Override
	public void delete(Long id) {
	  dao.deleteById(id);
		
	}

	@Override
	public Order create2(JsonNode orderData, Account acc) {
		  try {
			  ObjectMapper mapper =  new ObjectMapper();

		        Order order =  mapper.convertValue(orderData, Order.class);
		        order.setAccount(acc);
		        dao.save(order);

		        TypeReference<List<OrderDetail>> type = new TypeReference<List<OrderDetail>>(){};
		        List<OrderDetail> details = mapper.convertValue(orderData.get("orderDetails"), type)
		        .stream().peek(d-> d.setOrder(order)).collect(Collectors.toList());
		        oddao.saveAll(details);
		        return order;
		  }catch(Exception e) {
			  System.out.println("loi roi ba");
		  }
		  return null;
//	        return order;
	}

	@Override
	public List<Order> findAllByConfirm() {
		return dao.findAllByConfirm();
	}

	@Override
	public List<Order> findAllByConfirmNotNull() {
		return dao.findAllByConfirmNull();
	}

	@Override
	public void confirm(Long id) {
		 dao.confirm(id);
	}

	@Override
	public Order findOne(Long id) {
		return dao.findById(id).get();
	}
    
}
