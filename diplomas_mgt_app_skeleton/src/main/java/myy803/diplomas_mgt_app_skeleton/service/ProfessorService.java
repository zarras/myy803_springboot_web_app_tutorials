package myy803.diplomas_mgt_app_skeleton.service;

import java.util.List;

import myy803.diplomas_mgt_app_skeleton.model.Application;
import myy803.diplomas_mgt_app_skeleton.model.Professor;
import myy803.diplomas_mgt_app_skeleton.model.Subject;
import myy803.diplomas_mgt_app_skeleton.model.Thesis;

public interface ProfessorService {
	public Professor retrieveProfile(String professorUsername);
	public void saveProfile(Professor professor);
	public List<Subject> listProfessorSubjects(String professorId);
	public void addSubject(String profUsername, Subject subject);
	public List<Application> listApplications(String profUsername, Integer subjectId);
	public List<Thesis> listProfessorTheses(String profUsername);
	public void assignSubject(String profUsername, Integer subjectId);
}
