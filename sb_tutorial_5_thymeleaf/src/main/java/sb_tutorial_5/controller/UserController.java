package sb_tutorial_5.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import sb_tutorial_5.entity.UserData;

@Controller
@RequestMapping("/users")
public class UserController {
	
	@GetMapping("/show_form")
    public String showForm(Model model) {
        UserData userData = new UserData();
        model.addAttribute("user_data", userData);
         
        List<String> listProfession = Arrays.asList("Developer", "Tester", "Architect");
        model.addAttribute("listProfession", listProfession);
         
        return "users/register_form";
    }
	
	@PostMapping("/register")
	public String registerUser(@ModelAttribute("user_data")UserData userData) {
		System.err.println(userData);
		return "users/register_success";
	}
}
