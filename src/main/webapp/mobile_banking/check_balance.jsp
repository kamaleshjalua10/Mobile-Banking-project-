<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
<%@ page import ="java.math.*" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title> Check Balance </title>
  <link rel="stylesheet" href="check_balance.css" />
</head>
<body>

<%

BigDecimal  showmoney = (BigDecimal) session.getAttribute("storebalance");

%>
	
	
	 <h1 id="text-checkbalance">Check - Balance </h1>

<div class="grid-container">

    <form action="check_balance_java.jsp" method="post">
    <div class="card">
      
      <button  type="submit" class="new-task" onclick="checkAnimation()" > Check </button>
     	<br>
     	
      <input type="number" name="pin" placeholder="Enter  4  Digit  Pin" required />
        
      </div> 
    </form>

    <img src="check-boy.png" id="boy" alt="">

    <div class="card" id="div-3">
      <a href="profilepage.jsp"> <button class="new-task"> Balance  </button></a> 
      
       <h1> <%= showmoney %> </h1> 
    </div>

  </div>
  
  <script >

function checkAnimation() {
  const boy = document.getElementById('boy');
  const card3 = document.getElementById('div-3');
  // const title = document.getElementById('title');

  // Set transition for smooth movement over 3 seconds
  boy.style.transition = 'transform 2s linear, opacity 3s';
  card3.style.transition = 'transform 3s linear, opacity 3s';
  // title.style.transition = 'transform 3s linear';

  // Move the images up
  boy.style.transform = 'translatex(35px)';
  card3.style.transform = 'translatex(40px)';

  // Set opacity
  boy.style.opacity = '1';
  card3.style.opacity = '1';

}


  </script>


</body>
</html>
    