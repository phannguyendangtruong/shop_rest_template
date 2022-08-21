package com.dangtruong.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dangtruong.dao.AccountDAO;

@Controller
public class ShoppingCartController {

    @Autowired
    AccountDAO dao;

    @RequestMapping("/cart/view")
    public String view(Model model, HttpServletRequest req){
        model.addAttribute("address", dao.findById(req.getRemoteUser()).get().getAddress());
      //  System.out.println(dao.findById(req.getRemoteUser()).get().getAddress());
        return "cart/view";
    }
}
