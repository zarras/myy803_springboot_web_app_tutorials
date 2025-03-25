package myy803.diplomas_mgt_app_skeleton.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import myy803.diplomas_mgt_app_skeleton.model.strategies.BestApplicantStrategy;
import myy803.diplomas_mgt_app_skeleton.model.strategies.BestApplicantStrategyFactory;



@Entity
@Table(name="subjects")
public class Subject {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name="title")
	private String title;
	
	@Column(name="description")
	private String description;
	
	@Column(name="available")
	private boolean available;
	
	@ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "supervisor_username")
	private Professor supervisor;
	
	/*
	 *  We may need this to be bidirectional 
	 *  to be able to easily show information 
	 *  to both students and profs 
	 *  mappedBy value is the name of the 
	 *  association-mapping attribute on the owning side
	 *  seems it does not matter much where you put @JoinColumn  
	 */
	@OneToMany(
			cascade=CascadeType.ALL, 
			fetch= FetchType.LAZY, 
			mappedBy="applicationSubject")	// this is bidirectional 
	private List<Application> applications;

	public Subject() {
		super();
	}

	public Subject(String title, String description, boolean available, List<Application> applications) {
		super();
		this.title = title;
		this.description = description;
		this.available = available;
		this.applications = applications;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	public List<Application> getApplications() {
		return applications;
	}

	public void setApplications(List<Application> applications) {
		this.applications = applications;
	}

	public Professor getSupervisor() {
		return supervisor;
	}

	public void setSupervisor(Professor supervisor) {
		this.supervisor = supervisor;
	}

	public Student findBestApplicant(String applicantSelectionStrategy) {
		BestApplicantStrategy bestApplicantStrategy = BestApplicantStrategyFactory.createStrategy(applicantSelectionStrategy);
		
		Student firstApplicant = applications.get(0).getApplicant();
		return firstApplicant;
	}
	
}
