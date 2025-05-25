<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title> Profile  </title>
</head>
<body>

<%!
String fname;
Long faccount;
%>

<%
	
	String url="jdbc:mysql://localhost:3306/atm";
	String user="root";
	String hpassword="#bmwm5";
	
	boolean submit=false;
	
	String phoneno=request.getParameter("phonenumber");
	String passwords=request.getParameter("password");

	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,user,hpassword);
	String query="select Mobile_No,Password from bank where Mobile_No=? and Password=?";
	PreparedStatement pstmt=con.prepareStatement(query);
	
	pstmt.setString(1,phoneno);
	pstmt.setString(2,passwords);
	
	ResultSet rs=pstmt.executeQuery();
	
	if(rs.next()){
		String query2="select Name,Account_No from bank where Mobile_No=? and Password=?";
		PreparedStatement pstmt2=con.prepareStatement(query2);
		pstmt2.setString(1,phoneno);
		pstmt2.setString(2,passwords);
		ResultSet rss=pstmt2.executeQuery();

		 if(rss.next()){
		  fname=rss.getString("Name");
		  faccount=rss.getLong("Account_No");
		 
		 }
		 
		// Store values in session
		    session.setAttribute("dataname", fname);
		    session.setAttribute("dataaccount", faccount);
		
		    	 
			pstmt2.close();
			rss.close();
			submit=true;
	}	
	else{
%>		
		<script type="text/javascript">
		
		alert(" Your password is wrong ");
		
		</script>
<%		
	}
	
	con.close();
	pstmt.close();
	rs.close();
	
	
	
	if(submit){
 
 	 response.sendRedirect("profilepage.jsp");
  
	}
%>

<%-- <%@ include file="atmpage.jsp" %>  --%>


</body>
</html>