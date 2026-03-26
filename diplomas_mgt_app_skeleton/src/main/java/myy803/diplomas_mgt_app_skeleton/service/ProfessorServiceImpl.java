package myy803.diplomas_mgt_app_skeleton.service;

import myy803.diplomas_mgt_app_skeleton.model.Application;
import myy803.diplomas_mgt_app_skeleton.model.Professor;
import myy803.diplomas_mgt_app_skeleton.model.Subject;
import myy803.diplomas_mgt_app_skeleton.model.Thesis;
import myy803.diplomas_mgt_app_skeleton.repositories.ProfessorRepository;
import myy803.diplomas_mgt_app_skeleton.repositories.SubjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProfessorServiceImpl implements ProfessorService {

	@Autowired

	private ProfessorRepository professorDAO;
	
	@Autowired
	private SubjectRepository subjectRepository;


	@Override
	public Professor retrieveProfile(String professorUsername) {
		Optional<Professor> professor = professorDAO.findById(professorUsername);
		if (professor.isPresent())
			return professor.get();
		else {
			return new Professor(professorUsername);
		}
	}

	@Override
	public void saveProfile(Professor professor) {
		professorDAO.save(professor);
	}

	@Override
	public List<Subject> listProfessorSubjects(String professorId) {

		return subjectRepository.findBySupervisorUsername(professorId);
	}


	@Override
	public void addSubject(String profUsername, Subject subject) {
		Optional<Professor> supervisor = professorDAO.findByIdWithSubjects(profUsername);
		subject.setSupervisor(supervisor.get());
		supervisor.get().addSubject(subject);
		professorDAO.save(supervisor.get());
	}

	@Override
	public List<Application> listApplications(String profUsername, Integer subjectId) {
		List<Application> applications = null;
		Optional<Professor> supervisor = professorDAO.findById(profUsername);
		if(supervisor.isPresent())
			applications = supervisor.get().getApplications(subjectId);
		return applications;
	}

	@Override
	public List<Thesis> listProfessorTheses(String profUsername) {
		List<Thesis> theses = null;
		Optional<Professor> professor = professorDAO.findById(profUsername);
		if(professor.isPresent())
			theses = professor.get().getTheses();		
		
		return theses;
	}

	@Override
	public void assignSubject(String profUsername, Integer subjectId) {
		Optional<Professor> supervisor = professorDAO.findById(profUsername);
		supervisor.get().addThesis(subjectId);
		professorDAO.save(supervisor.get());
	}
}
