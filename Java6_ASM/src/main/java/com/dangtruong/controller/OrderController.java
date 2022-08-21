package com.dangtruong.controller;



import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dangtruong.dao.OrderDAO;
import com.dangtruong.entity.Account;
import com.dangtruong.entity.Order;
import com.dangtruong.service.AccountService;
import com.dangtruong.service.OrderService;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import com.dangtruong.entity.*;
import com.dangtruong.dao.OrderDetailDAO;
import com.fasterxml.jackson.core.type.TypeReference;

import java.util.*;
import java.util.stream.Collectors;

@Controller
public class OrderController {

    @Autowired
    OrderService orderService;

    @Autowired
    AccountService accountService;

    @Autowired
    OrderDAO dao;

    @Autowired
    OrderDetailDAO oddao;
    


    @RequestMapping("/order/checkout")
    public String checkout(Model model, HttpServletRequest req){
        model.addAttribute("address", accountService.findById(req.getRemoteUser()).getAddress());
        return "order/checkout";
    }
    
    @RequestMapping("/order/detail/{id}")
    public String detail(@PathVariable("id")Long id, Model model){
        model.addAttribute("order", orderService.findById(id));
        return "order/detail";
    }

    @RequestMapping("/order/list")
    public String listd(Model model, HttpServletRequest request){
        String username = request.getRemoteUser();
        model.addAttribute("orders", orderService.findByUsername(username));
        return "order/list";
    }

    @PostMapping("/order/cancel/{id}")
    public String cancel(@PathVariable("id") Long id){
        orderService.delete(id);
        return "order/list";
    }

    @PostMapping("/order/search")
    public String search(@PathParam("username")String username, Model model){
        model.addAttribute("orders", orderService.findByUsername(username));
        return "order/list";
    }

    @PostMapping("/order/add/anonymous")
    public void orderForAnonymous(@PathParam("fullname")String fullname, @PathParam("address") String address, @PathParam("phone")String phone, @RequestBody JsonNode orderData){
        try {
        	Account acc = new Account();
            acc.setUsername(phone);
            acc.setFullname(fullname);
            acc.setAddress(address);
            accountService.create(acc);
            
            orderService.create2(orderData, acc);
        }catch(Exception e) {
        }

    }
}
