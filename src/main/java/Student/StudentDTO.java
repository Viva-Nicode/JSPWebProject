package Student;

public class StudentDTO {
	private String StudentID;
	private String StudentName;
	private String dept_name;
	private int tot_cred;

	public String getStudentID() {
		return StudentID;
	}

	public void setStudentID(String studentID) {
		StudentID = studentID;
	}

	public String getStudentName() {
		return StudentName;
	}

	public void setStudentName(String studentName) {
		StudentName = studentName;
	}

	public String getDept_name() {
		return dept_name;
	}

	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}

	public int getTot_cred() {
		return tot_cred;
	}

	public void setTot_cred(int tot_cred) {
		this.tot_cred = tot_cred;
	}

}
