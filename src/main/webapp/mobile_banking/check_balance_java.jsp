
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*"  %>   
 <%@ page import ="java.math.*" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Check Balance </title>

</head>
<body>
    
<%!
BigDecimal money;

%>

	<%
	
	Long faccountno=(Long)session.getAttribute("dataaccount");
	
	String url="jdbc:mysql://localhost:3306/atm";
	String uname="root";
	String password="#bmwm5";
	
	
	String pin=request.getParameter("pin");
	
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	boolean submit=false;
	
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,uname,password);
		String query="select Pin  from bank where Pin=? AND Account_No=?";
		pstmt=con.prepareStatement(query);
		pstmt.setString(1,pin);
		pstmt.setLong(2,faccountno);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			String query2="select Balance from bank where Account_No=?";
			PreparedStatement pstmt2=con.prepareStatement(query2);
			pstmt2.setLong(1,faccountno);
			ResultSet rs2=pstmt2.executeQuery();
			if(rs2.next()){
				 money=rs2.getBigDecimal("Balance");
				
				
				rs2.close();
				pstmt2.close();
				submit=true;		
			}
			
			//   store balance value 
			session.setAttribute("storebalance",money);
			
		}
		else{
	%>		
			<script type="text/javascript">
			
			alert(" Your Pin is wrong ");
			window.history.back();
			
			</script>
	<%		
		}
		
	}catch(Exception e){
		out.println("<h3>Error : " + e.getMessage() + "</h3>");
	}
	
	rs.close();
	pstmt.close();
	con.close();
		
	if(submit){

		response.sendRedirect("check_balance.jsp");
	}

%>

</body>
</html>