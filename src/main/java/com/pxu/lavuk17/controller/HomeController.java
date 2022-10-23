package com.pxu.lavuk17.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.pxu.lavuk17.model.User;

@Controller
public class HomeController {

	@GetMapping("/home")
	public String home(Model model) {
		model.addAttribute("title", "Home");
		return "home";
	}

	@GetMapping("/user")
	public String userInfo(Model model) {
		model.addAttribute("title", "User Info");
		User user = new User("Lê Anh Vũ - K17");
		model.addAttribute("user", user);
		return "user";
	}
}
