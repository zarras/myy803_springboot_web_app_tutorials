package myy803.diplomas_mgt_app_skeleton.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="students")
public class Student {
	
	@Id
	@Column(name="username")
	private String username;
	
	@Column(name="full_name")
	private String fullName;
	
	@Column(name="AM")
	private String AM;
	
	@Column(name="year_of_studies")
	private int yearOfStudies;
	
	@Column(name="average_grade")
	private double avgGrade;
	
	@OneToMany(
			cascade=CascadeType.ALL, 
			fetch= FetchType.LAZY, 
			mappedBy="applicant")	// this is bidirectional 
	private List<Application> applications;

	public Student() {
		super();
	}

	public Student(String username, String fullName, String aM, int yearOfStudies, double avgGrade,
			List<Application> applications) {
		super();
		this.username = username;
		this.fullName = fullName;
		AM = aM;
		this.yearOfStudies = yearOfStudies;
		this.avgGrade = avgGrade;
		this.applications = applications;
	}

	public Student(String studentUsername) {
		this.username = studentUsername;
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

	public String getAM() {
		return AM;
	}

	public void setAM(String aM) {
		AM = aM;
	}

	public int getYearOfStudies() {
		return yearOfStudies;
	}

	public void setYearOfStudies(int yearOfStudies) {
		this.yearOfStudies = yearOfStudies;
	}

	public double getAvgGrade() {
		return avgGrade;
	}

	public void setAvgGrade(double avgGrade) {
		this.avgGrade = avgGrade;
	}

	public List<Application> getApplications() {
		return applications;
	}

	public void setApplications(List<Application> applications) {
		this.applications = applications;
	}

	@Override
	public String toString() {
		return "Student [username=" + username + ", fullName=" + fullName + ", AM=" + AM + ", yearOfStudies="
				+ yearOfStudies + ", avgGrade=" + avgGrade + ", applications=" + applications + "]";
	}

	public void addApplication(Application application) {
		applications.add(application);		
	}
	
	
}
