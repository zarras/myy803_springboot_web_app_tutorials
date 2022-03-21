package myy803.springboot.sb_tutorial_1_thymeleaf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HelloController {

	// create a mapping for "/hello"
	
	@RequestMapping("/hello")
	public String sayHello(Model theModel) {
		
		theModel.addAttribute("helloDate", new java.util.Date());
		
		return "helloworld";
	}
}








