package myy803.diplomas_mgt_app_skeleton.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="professors")
public class Professor {
	
	@Id
	@Column(name="username")
	private String username;
	
	@Column(name="full_name")
	private String fullName;
	
	@Column(name="specialty")
	private String specialty;
	
	@OneToMany(
			cascade=CascadeType.ALL, 
			fetch= FetchType.LAZY, 
			mappedBy="supervisor")
	private List<Subject> subjects = new ArrayList<Subject>();
	
	@OneToMany(cascade=CascadeType.ALL, 
			fetch= FetchType.LAZY, 
			mappedBy="supervisor")
	private List<Thesis> theses = new ArrayList<Thesis>();

	public Professor() {
		super();
	}

	public Professor(String username, String fullName, String specialty, List<Subject> subjects, List<Thesis> theses) {
		super();
		this.username = username;
		this.fullName = fullName;
		this.specialty = specialty;
		this.subjects = subjects;
		this.theses = theses;
	}

	public Professor(String professorUsername) {
		this.username = professorUsername;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public List<Subject> getSubjects() {
		return subjects;
	}

	public void setSubjects(List<Subject> subjects) {
		this.subjects = subjects;
	}

	public List<Thesis> getTheses() {
		return theses;
	}

	public void setTheses(List<Thesis> theses) {
		this.theses = theses;
	}

	public void addThesis(Integer subjectId) {
		
		for(Subject subject : subjects) {
			if(subject.getId() == subjectId) {
				Thesis newThesis = new Thesis();
				newThesis.setSupervisor(this);
				Student applicant = subject.findBestApplicant("");
				newThesis.setStudent(applicant);
				newThesis.setSubject(subject);
				theses.add(newThesis);
			}
		}		
	}

	public List<Application> getApplications(Integer subjectId) {
		for(Subject subject: subjects) {
			if(subject.getId() == subjectId)
				return subject.getApplications();
		}
		return null;
	}

	public void addSubject(Subject subject) {
		subjects.add(subject);
	}
}
