<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Check Balance </title>
  <link rel="stylesheet" href="payment.css" />
</head>
<body>

<%

String  rname = (String) session.getAttribute("receivername");
String rmobile = (String) session.getAttribute("receivermobile");

%>


	<h1 id="text-payment">Payment</h1>
  
  <div class="grid-container">

  

    <form action="payment_java.jsp" method="post">
    <div class="card">
      <button  type="submit"  class="new-task" onclick=" payAnimation()"  > PAY </button>
      <br>
      <input type="number" name="account" placeholder="Account No " required />
      <br>
      <input type="number" name="amount" placeholder=" Amount" required />

      <input type="number" name="pin" placeholder="Your 4  Digit  Pin" required />
      </div> 
    </form>

    <!-- <img src="check-boy.png" id="boy" alt=""> -->

    <div class="card" id="div-3">
     <a href="profilepage.jsp"> <button class="new-task"> Receiver Details  </button> </a> 
      <br>
       <br>
        <br>
      
      <h2>Name: <%= rname %></h2>
      <h2>Mobile No: <%= rmobile %></h2>
      <br>
      <h1>Transaction successful!</h1>
    </div>

  </div>

  
  <script >

function payAnimation() {

  const card3 = document.getElementById('div-3');

  card3.style.transition = 'transform 2s linear, opacity 2s';

  card3.style.transform = 'translateY(-100px)';

  card3.style.opacity = '1';


}

  </script>
</body>
</html>
    