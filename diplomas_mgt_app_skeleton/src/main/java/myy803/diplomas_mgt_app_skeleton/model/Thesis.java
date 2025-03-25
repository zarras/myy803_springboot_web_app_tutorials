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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="theses") 
public class Thesis {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name="report_grade")
	private double reportGrade;
	
	@Column(name="presentation_grade")
	private double presentationGrade;
	
	@Column(name="implementation_grade")
	private double implementationGrade;
	
	@Column(name="total_grade")
	private double thesisTotalGrade;

	@OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "student_id")
	private Student student;
	
	@OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "subject_id")
	private Subject subject;
	
	@ManyToOne(fetch = FetchType.EAGER) 
    @JoinColumn(name = "professor_Username")	
	private Professor supervisor;
	
	@ManyToMany(fetch = FetchType.EAGER, 
			cascade = {CascadeType.PERSIST,CascadeType.MERGE,CascadeType.REFRESH})
    @JoinTable(
            name = "evaluation_board",
            joinColumns = @JoinColumn(
                    name = "thesis_id", referencedColumnName = "id"
            ),
            inverseJoinColumns = @JoinColumn(
                    name = "board_member_username", referencedColumnName = "username"
            )
    )
	private List<Professor> evaluationBoard;
	
	public Thesis() {
		super();
	}

	public Thesis(Integer id, Student student, Subject subject, Professor supervisor, List<Professor> evaluationBoard,
			double reportGrade, double presentationGrade, double implementationGrade, double thesisTotalGrade) {
		super();
		this.id = id;
		this.student = student;
		this.subject = subject;
		this.supervisor = supervisor;
		this.evaluationBoard = evaluationBoard;
		this.reportGrade = reportGrade;
		this.presentationGrade = presentationGrade;
		this.implementationGrade = implementationGrade;
		this.thesisTotalGrade = thesisTotalGrade;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	public Professor getSupervisor() {
		return supervisor;
	}

	public void setSupervisor(Professor supervisor) {
		this.supervisor = supervisor;
	}

	public List<Professor> getEvaluationBoard() {
		return evaluationBoard;
	}

	public void setEvaluationBoard(List<Professor> evaluationBoard) {
		this.evaluationBoard = evaluationBoard;
	}

	public double getReportGrade() {
		return reportGrade;
	}

	public void setReportGrade(double reportGrade) {
		this.reportGrade = reportGrade;
	}

	public double getPresentationGrade() {
		return presentationGrade;
	}

	public void setPresentationGrade(double presentationGrade) {
		this.presentationGrade = presentationGrade;
	}

	public double getImplementationGrade() {
		return implementationGrade;
	}

	public void setImplementationGrade(double implementationGrade) {
		this.implementationGrade = implementationGrade;
	}

	public double getThesisTotalGrade() {
		return thesisTotalGrade;
	}

	public void setThesisTotalGrade(double thesisTotalGrade) {
		this.thesisTotalGrade = thesisTotalGrade;
	}
	
}
