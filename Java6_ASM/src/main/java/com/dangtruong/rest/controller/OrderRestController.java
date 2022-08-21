package com.dangtruong.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dangtruong.dao.OrderDetailDAO;
import com.dangtruong.entity.Order;
import com.dangtruong.entity.OrderDetail;
import com.dangtruong.service.OrderService;
import com.fasterxml.jackson.databind.JsonNode;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/orders")
public class OrderRestController {
    @Autowired
    OrderService orderService;

    @Autowired
    OrderDetailDAO odao;

    @PostMapping()
    public Order create(@RequestBody JsonNode orderData){
        return orderService.create(orderData);

    }
    
    @GetMapping()
    public List<Order> getAll(){
    	return orderService.findAllByConfirm();
    }

    // @GetMapping("/detail")
    // public List<OrderDetail> getAllDetail(Long id){
    // 	return odao.getOrderDetail(id);
    // }

    @GetMapping("/detail/{id}")
    public List<OrderDetail> getOne(@PathVariable("id") Long id){
        return odao.getOrderDetail(id);
    }

    @GetMapping("/confirm")
    public List<Order> getAllNotNull(){
    	return orderService.findAllByConfirmNotNull();
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable("id") Long id){
        orderService.delete(id);
    }

    @PutMapping("/{id}")
    public void update(@PathVariable("id")Long id){
         orderService.confirm(id);
    }
}
