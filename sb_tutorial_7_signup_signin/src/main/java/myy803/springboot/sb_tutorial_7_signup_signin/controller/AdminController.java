package myy803.springboot.sb_tutorial_7_signup_signin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    @RequestMapping("/admin/dashboard")
    public String getAdminHome(){
        return "admin/dashboard";
    }
}
