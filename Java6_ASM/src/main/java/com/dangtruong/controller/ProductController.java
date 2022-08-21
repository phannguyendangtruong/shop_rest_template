package com.dangtruong.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dangtruong.entity.Product;
import com.dangtruong.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;

	@RequestMapping("/home")
	public String home(){
		return "product/home";
	}

	@RequestMapping("/product/list")
	public String list(Model model) {
		return "redirect:/product/list/0";
	}

	@RequestMapping("/product/list/{id}")
	public String listAll(Model model, @PathVariable("id") Optional<String> id,
			@RequestParam("page") Optional<Integer> page) {
		// if (id.get().equals("0")) {
		// 	Pageable pageable = PageRequest.of(page.orElse(0), 8);
		// 	Page<Product> list = productService.findAllBy0(pageable);
		// 	model.addAttribute("page", list);
		// }
		if (id.isPresent()) {
			Pageable pageable = PageRequest.of(page.orElse(0), 8);
			if(productService.findByCategoryId(id.get()).size() == 0){
				Page<Product> list = productService.findAll(pageable);
				model.addAttribute("page", list);
			}else{
				Page<Product> list = productService.findAllByCategory(id, pageable);
				model.addAttribute("page", list);
			}
		} else {
			Pageable pageable = PageRequest.of(page.orElse(0), 8);
			Page<Product> list = productService.findAllBy0(pageable);
			model.addAttribute("page", list);
		}

		model.addAttribute("cid", id.get());
		return "product/list";
	}

	@RequestMapping("/product/detail/{id}")
	public String detail(@PathVariable("id") Integer id, Model model) {
		Product pr = productService.findById(id);
		model.addAttribute("item", pr);
		return "product/detail";
	}

	@RequestMapping("/test")
	public String test(HttpServletRequest request, Model model, @RequestParam("page") Optional<Integer> page) {
		Pageable pageable = PageRequest.of(page.orElse(0), 8);
		Page<Product> list = productService.findAllBy0(pageable);
		model.addAttribute("page", list);
		return "product/list";
	}

}
