package myy803.diplomas_mgt_app_skeleton.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import myy803.diplomas_mgt_app_skeleton.model.Application;
import myy803.diplomas_mgt_app_skeleton.model.Professor;
import myy803.diplomas_mgt_app_skeleton.model.Subject;
import myy803.diplomas_mgt_app_skeleton.model.Thesis;
import myy803.diplomas_mgt_app_skeleton.service.ProfessorService;
import myy803.diplomas_mgt_app_skeleton.service.SubjectService;
import myy803.diplomas_mgt_app_skeleton.service.UserService;

@Controller
public class ProfessorController {

	@Autowired
    UserService userService;
	
	@Autowired
    ProfessorService professorService;
	
	@Autowired
	SubjectService subjectService;
	
    @RequestMapping("/professor/dashboard")
    public String getProfessorMainMenu(){
       
    	return "professor/dashboard";
    }
    
    @RequestMapping("/professor/profile")
    public String retrieveProfile(Model model){
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();	
        String profUsername = authentication.getName();
        System.err.println("XXXXXX " + profUsername);
        Professor professor = professorService.retrieveProfile(profUsername);
    	
    	model.addAttribute("professor", professor);	
    	
    	return "professor/professor-profile";
    }
    
    @RequestMapping("/professor/save_profile")
    public String saveProfile(@ModelAttribute("professor") Professor professor, Model theModel) {
    	
    	professorService.saveProfile(professor);
    	
    	return "professor/dashboard";
    }
    
    @RequestMapping("/professor/list_subjects")
    public String listProfessorSubjects(Model model){
       
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		System.err.println("Username " + username);
		
		List<Subject> subjects = professorService.listProfessorSubjects(username);
		
		model.addAttribute("subjects", subjects);
				    	
    	return "professor/subjects";
    }
    
    @RequestMapping("/professor/show_subject_form")
    public String showSubjectForm(Model model){
		
    	Subject subject = new Subject();
    	subject.setAvailable(true);
    	
		model.addAttribute("subject", subject);
				    	
    	return "professor/subject-form";
    }
    
    @RequestMapping("/professor/add_subject")
    public String addSubject(@ModelAttribute("subject") Subject subject, Model model){
		    	
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		professorService.addSubject(username, subject);
		
    	return "redirect:/professor/list_subjects";
    }
    
    @RequestMapping("/professor/list_applications")
    public String listApplications(@ModelAttribute("selected_subject_id") Integer subjectId, Model model){
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		List<Application> applications = professorService.listApplications(username, subjectId);
		
		model.addAttribute("applications", applications);
		
    	return "professor/applications";
    }
    
    @RequestMapping("/professor/assign_subject")
    public String assignSubject(@ModelAttribute("selected_subject_id") Integer subjectId, Model model){
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		professorService.assignSubject(username, subjectId);
		
//		Subject subject = subjectService.findById(subjectId);
//		List<Application> applications = subject.getApplications();		
//		
//		if(applications.size() > 0) {
//			Thesis newThesis = new Thesis();
//			
//			Professor supervisor = professorService.findById(username);
//			newThesis.setSupervisor(supervisor);
//
//			Student firstApplicant = applications.get(0).getApplicant();
//			newThesis.setStudent(firstApplicant);
//			newThesis.setSubject(subject);
//			
//			supervisor.addThesis(newThesis);
//			
//			professorService.saveProfile(supervisor);
//		}
		
    	return "redirect:/professor/list_subjects";
    }
    
    @RequestMapping("/professor/list_theses")
    public String listProfessorTheses(Model model){
       
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		//Professor professor = professorService.findById(username);
		
		//List<Thesis> theses = professor.getTheses();
		
		List<Thesis> theses = professorService.listProfessorTheses(username);
		
		model.addAttribute("theses", theses);
				    	
    	return "professor/theses";
    }
}
