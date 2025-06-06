<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.math.BigDecimal" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Transfer</title>
</head>
<body>

<%
    // Declare variables
    String receiverName = "";
    String receiverMobile = "";
    boolean transactionSuccess = false;

    // Session data (sender account number)
    Long senderAccountNo = (Long) session.getAttribute("dataaccount");

    // Database credentials
    String url = "jdbc:mysql://localhost:3306/atm";
    String username = "root";
    String dbPassword = "#bmwm5";

    // Get parameters from frontend
    String strReceiverAccount = request.getParameter("account");
    String strAmount = request.getParameter("amount");
    String pin = request.getParameter("pin");

    // Input validation
    if (strReceiverAccount == null || strAmount == null || pin == null) {
        out.println("<h3>Invalid input. Please fill all fields.</h3>");
        return;
    }

    try {
        // Parse input
        Long receiverAccount = Long.parseLong(strReceiverAccount);
        BigDecimal transferAmount = new BigDecimal(strAmount);

        // JDBC Connection
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection con = DriverManager.getConnection(url, username, dbPassword)) {

            // Step 1: Verify sender's PIN and balance
            String querySender = "SELECT Balance FROM bank WHERE Pin = ? AND Account_No = ?";
            try (PreparedStatement psSender = con.prepareStatement(querySender)) {
                psSender.setString(1, pin);
                psSender.setLong(2, senderAccountNo);
                try (ResultSet rsSender = psSender.executeQuery()) {
                    if (rsSender.next()) {
                        BigDecimal senderBalance = rsSender.getBigDecimal("Balance");

                        if (senderBalance.compareTo(transferAmount) >= 0) {
                            // Step 2: Check if receiver account exists
                            String queryReceiver = "SELECT Name, Mobile_No, Balance FROM bank WHERE Account_No = ?";
                            try (PreparedStatement psReceiver = con.prepareStatement(queryReceiver)) {
                                psReceiver.setLong(1, receiverAccount);
                                try (ResultSet rsReceiver = psReceiver.executeQuery()) {
                                    if (rsReceiver.next()) {
                                        receiverName = rsReceiver.getString("Name");
                                        receiverMobile = rsReceiver.getString("Mobile_No");
                                        BigDecimal receiverBalance = rsReceiver.getBigDecimal("Balance");

                                        // Step 3: Perform transaction (use transaction management)
                                        con.setAutoCommit(false);

                                        // Update receiver's balance
                                        String updateReceiver = "UPDATE bank SET Balance = ? WHERE Account_No = ?";
                                        try (PreparedStatement psUpdateReceiver = con.prepareStatement(updateReceiver)) {
                                            psUpdateReceiver.setBigDecimal(1, receiverBalance.add(transferAmount));
                                            psUpdateReceiver.setLong(2, receiverAccount);
                                            psUpdateReceiver.executeUpdate();
                                        }

                                        // Update sender's balance
                                        String updateSender = "UPDATE bank SET Balance = ? WHERE Account_No = ?";
                                        try (PreparedStatement psUpdateSender = con.prepareStatement(updateSender)) {
                                            psUpdateSender.setBigDecimal(1, senderBalance.subtract(transferAmount));
                                            psUpdateSender.setLong(2, senderAccountNo);
                                            psUpdateSender.executeUpdate();
                                        }

                                        con.commit(); // All updates successful
                                        transactionSuccess = true;

                                        // Optional: store receiver info in session
                                        session.setAttribute("receivername", receiverName);
                                        session.setAttribute("receivermobile", receiverMobile);
                                    }else {
                                    	
                                    	%>		
                                		<script type="text/javascript">
                                		
                                		alert(" Receiver account not found ");
                                		window.history.back();
                                		
                                		</script>
                                		
                               			 <%
                                       
                                    }
                                }
                            }
                        } else {
                        	
                        	%>		
                    		<script type="text/javascript">
                    		
                    		alert(" Insufficient balance Please Deposit Money ");
                    		window.location.href = "deposit.jsp";
                    		
                    		</script>
                   			 <%	
                        	
                        }
                    } else {
                    	
                    	%>		
                		<script type="text/javascript">
                		
                		alert(" Invalid PIN or Account number. ");
                		window.history.back();
                		
                		</script>
                		
              			<%
                    	
                    }
                }
            }
        }
    } catch (Exception e) {
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    }


 if (transactionSuccess) {
    	
	 response.sendRedirect("payment.jsp");
    	
    } 
    
%>

</body>
</html>
