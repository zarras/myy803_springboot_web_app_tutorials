package myy803.diplomas_mgt_app_skeleton.service;

import java.util.List;

import org.springframework.stereotype.Service;

import myy803.diplomas_mgt_app_skeleton.model.Student;
import myy803.diplomas_mgt_app_skeleton.model.Subject;

@Service
public interface StudentService {
//	public Student findById(String username);
	public void saveProfile(Student student);
	public Student retrieveProfile(String studentUsername);
	public List<Subject> listStudentSubjects();
	void applyToSubject(String studentUsername, Integer subjectId);
}
