package myy803.diplomas_mgt_app_skeleton.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import myy803.diplomas_mgt_app_skeleton.model.Student;
import myy803.diplomas_mgt_app_skeleton.model.Subject;
import myy803.diplomas_mgt_app_skeleton.service.StudentService;
import myy803.diplomas_mgt_app_skeleton.service.UserService;

@Controller
public class StudentController {
	@Autowired
    UserService userService;
	
	@Autowired
    StudentService studentService;
	
    @RequestMapping("/student/dashboard")
    public String getStudentMainMenu(){
       
    	return "student/dashboard";
    }
    
    @RequestMapping("/student/profile")
    public String retrieveProfile(Model model){
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();	
        String studentUsername = authentication.getName();
      
    	Student student = studentService.retrieveProfile(studentUsername);
    	
    	model.addAttribute("student", student);
    	return "student/student-profile";
    }
    
    @RequestMapping("/student/save_profile")
    public String saveProfile(@ModelAttribute("student") Student student, Model theModel) {

    	studentService.saveProfile(student);
    	
    	return "student/dashboard";
    }
    
    @RequestMapping("/student/list_subjects")
    public String listStudentSubjects(Model model){
    	
    	List<Subject> availableSubjects = studentService.listStudentSubjects();
    	model.addAttribute("subjects", availableSubjects);
				    	
    	return "student/subjects";
    }
    
    @RequestMapping("/student/apply_to_subject")
    public String applyToSubject(@RequestParam("selected_subject_id") Integer subjectId, Model model) {
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();	
        String studentUsername = authentication.getName();
        
    	studentService.applyToSubject(studentUsername, subjectId);
    	return "redirect:/student/list_subjects";
    }
}
