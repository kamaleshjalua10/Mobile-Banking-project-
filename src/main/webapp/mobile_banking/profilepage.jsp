<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

 <%@ include file="profilepage.css" %> 
 
</style>
<title>Insert title here</title>
</head>
<body>
<%

String  fname = (String) session.getAttribute("dataname");
Long faccountno = (Long) session.getAttribute("dataaccount");

%>
		<div class="big">
	        <h2> Profile</h2>
	        <div class="big1">
	            <img src="boy.png" alt="profile">
	
	            <div class="big1-u">	            
		            <h1>         Name : <%= fname %></h1>
		            <br>
			        <h1>Account No    : <%= faccountno %></h1>
            	</div>
        	</div>

	        <div class="big2">
	            <div class="big2-u">
	                <a href="deposit.jsp"><img src="deposit.png" alt=""></a>
	                <br>
	                <a href="deposit.jsp">Deposite</a>
	            </div>
	            <div class="big2-u"id="second">
	                <a href="check_balance.jsp"><img src="check-balance.png" alt=""></a>
	                <br>
	                <a href="check_balance.jsp">Check Balance</a>
	
	            </div>
	            <div class="big2-u">
	                <a href="withdrawal.jsp"><img src="withdrawal.png" alt=""></a>
	                <br>
	                <a href="withdrawal.jsp">Withdrawal</a>
	            </div>
	            <div class="big2-u">
	                <a href="payment.jsp"><img src="payment.png" alt=""></a>
	                <br>
	                <a href="payment.jsp">Payment</a>
	
	            </div>
	            <div class="big2-u"id="last">
	                <a href="pinchange.jsp"><img src="pin-change.png" alt=""></a>
	                <br>
	                <a href="pinchange.jsp">Pin Change</a>
	
	            </div>

        </div>

    </div>


</body>
</html>