<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="Student.StudentDAO"%>
<%@ page import="Util.DatabaseUtil"%>
<%@ page import="java.io.PrintWriter"%>



<%
request.setCharacterEncoding("UTF-8");
String StudentID = null;
String StudentName = null;
String dept_name = null;
int tot_cred = 0;

if (request.getParameter("StudentID") != null && !request.getParameter("StudentID").equals("")) {
	StudentID = request.getParameter("StudentID");
}
if (request.getParameter("StudentName") != null && !request.getParameter("StudentName").equals("")) {
	StudentName = (String) request.getParameter("StudentName");
}
if (request.getParameter("dept_name") != null && !request.getParameter("dept_name").equals("")) {
	dept_name = (String) request.getParameter("dept_name");
}
if (request.getParameter("tot_cred") != null) {
	tot_cred = Integer.parseInt(request.getParameter("tot_cred"));
}

if (StudentID == null || StudentName == null || dept_name == null) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('입력되지 않은 파라미터가 있습니다.');");
	script.println("history.back();");
	script.println("</script>");
	script.close();
	return;
}

StudentDAO studentDAO = new StudentDAO();
int result = 0;
try {
	result = studentDAO.insertStudentTuple(StudentID, StudentName, dept_name, tot_cred);
} catch (Exception e) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('ID is primary key');");
	script.println("location.href = 'index.jsp'");
	script.println("</script>");
	script.close();
	return;
}

if (result == 1) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('input Student Info success');");
	script.println("location.href = 'index.jsp'");
	script.println("</script>");
	script.close();
	return;
}
%>