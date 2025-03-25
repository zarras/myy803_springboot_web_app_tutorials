package myy803.diplomas_mgt_app_skeleton.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myy803.diplomas_mgt_app_skeleton.dao.SubjectDAO;
import myy803.diplomas_mgt_app_skeleton.model.Subject;

@Service
public class SubjectServiceImpl implements SubjectService {

	@Autowired
	private SubjectDAO subjectDAO;

	@Override
	public void save(Subject subject) {
		subjectDAO.save(subject);
	}

	@Override
	public List<Subject> findAll() {
		return subjectDAO.findAll();
	}

	@Override
	public Subject findById(Integer subjectId) {
		return subjectDAO.findById(subjectId).get();
	}
}
