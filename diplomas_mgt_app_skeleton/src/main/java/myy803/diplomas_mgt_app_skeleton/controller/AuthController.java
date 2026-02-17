package myy803.diplomas_mgt_app_skeleton.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import myy803.diplomas_mgt_app_skeleton.model.User;
import myy803.diplomas_mgt_app_skeleton.service.UserService;

@Controller
public class AuthController {
    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String login(){
        return "auth/login";
    }

    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("user", new User());
        return "auth/register";
    }

    @RequestMapping("/save")
    public String registerUser(User user, Model model){
       
        if(userService.isUserPresent(user)){
            model.addAttribute("successMessage", "User already registered!");
        } else {
        	userService.saveUser(user);
            model.addAttribute("successMessage", "User registered successfully!");
        }
        
        return "homepage";
    }
}
