package myy803.diplomas_mgt_app_skeleton.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myy803.diplomas_mgt_app_skeleton.dao.ApplicationDAO;
import myy803.diplomas_mgt_app_skeleton.dao.StudentDAO;
import myy803.diplomas_mgt_app_skeleton.dao.SubjectDAO;
import myy803.diplomas_mgt_app_skeleton.model.Application;
import myy803.diplomas_mgt_app_skeleton.model.Student;
import myy803.diplomas_mgt_app_skeleton.model.Subject;

@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentDAO studentDAO;
	
	@Autowired 
	SubjectDAO subjectDAO;
	
	@Override
	public void saveProfile(Student student) {
		studentDAO.save(student);
	}
	
	@Override
	public List<Subject> listStudentSubjects(){
		List<Subject> allSubjects = subjectDAO.findAll();
		
    	List<Subject> availableSubjects = new ArrayList<Subject>();
    	for(Subject subject : allSubjects)
    		if(subject.isAvailable()) {
    			availableSubjects.add(subject);
    		}
    	return availableSubjects;
	}
	
	@Override
	public void applyToSubject(String studentUsername, Integer subjectId) {
		Application application = new Application();
    	
		Optional<Student> applicant = studentDAO.findById(studentUsername);
    	
		Optional<Subject> subject = subjectDAO.findById(subjectId);
    	
    	application.setApplicant(applicant.get());
    	application.setApplicationSubject(subject.get());    	
    	applicant.get().addApplication(application);
    	
    	studentDAO.save(applicant.get());
	}

	@Override
	public Student retrieveProfile(String studentUsername) {
		Optional<Student> student = studentDAO.findById(studentUsername);
		if (student.isPresent())
			return student.get();
		else 
			return new Student(studentUsername);
	}

}
