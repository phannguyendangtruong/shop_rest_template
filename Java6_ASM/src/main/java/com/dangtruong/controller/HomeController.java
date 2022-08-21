package com.dangtruong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dangtruong.dao.AccountDAO;
import com.dangtruong.dao.OrderDetailDAO;
import com.dangtruong.service.SessionService;

@Controller
public class HomeController {
	
	@Autowired
	SessionService ss;
	
	@Autowired
	AccountDAO acdao;
	
	@Autowired
	OrderDetailDAO odao;
	
	
        @RequestMapping({"/","/home/index"})
        public String home(){
            return "redirect:/product/list";
        }

        @RequestMapping({"/admin","/admin/home/index"})
        public String admin(){
        	ss.setAttribute("sumUser", acdao.getCountUser());
        	ss.setAttribute("totalPrice", odao.sum());
            return "redirect:/access/admin/index.html";
        }
}
