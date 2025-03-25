package myy803.diplomas_mgt_app_skeleton.service;

import java.util.List;

import myy803.diplomas_mgt_app_skeleton.model.Subject;


public interface SubjectService {
	public void save(Subject subject);
	public List<Subject> findAll();
	public Subject findById(Integer subjectId);
}
