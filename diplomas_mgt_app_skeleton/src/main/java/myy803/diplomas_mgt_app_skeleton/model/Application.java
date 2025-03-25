package myy803.diplomas_mgt_app_skeleton.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="applications")
public class Application {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "student_username")
	private Student applicant;
	
	/*
	 *  We may need this to be bidirectional 
	 *  to be able to easily show information 
	 *  to both students and profs 
	 */
	@ManyToOne(fetch = FetchType.EAGER) 
    @JoinColumn(name = "subject_id")
	private Subject applicationSubject;

	
	public Application() {
		super();
	}

	public Application(Student applicant, Subject applicationSubject) {
		super();
		this.applicant = applicant;
		this.applicationSubject = applicationSubject;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Student getApplicant() {
		return applicant;
	}

	public void setApplicant(Student applicant) {
		this.applicant = applicant;
	}

	public Subject getApplicationSubject() {
		return applicationSubject;
	}

	public void setApplicationSubject(Subject applicationSubject) {
		this.applicationSubject = applicationSubject;
	} 
}
