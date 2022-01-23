package myy803.springboot.sb_tutorial_0.rest;

import java.time.LocalTime;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloRestController {
	@GetMapping("/sayHello")
	public String sayHello() {
		return "Hello SpringBoot - Time on Server is " + LocalTime.now(); 
	}
}
