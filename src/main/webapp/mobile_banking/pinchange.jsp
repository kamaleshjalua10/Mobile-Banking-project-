<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title> Pin Change </title>
  <link rel="stylesheet" href="pinchange.css" />
</head>
<body>

  <h1 id="text-pinchange">Pin - Change  </h1>
  <div class="background">
    <div class="circle circle1"></div>
    <div class="circle circle2"></div>

    <div class="laptop-div">

    <div class="login-box">
      <!-- <h2>LOGIN</h2> -->
      <form action="pinchange_java.jsp" method="post" id="loginForm">
        <input type="number" name="oldpin" placeholder="4 Digit Old Pin" required />
        <input type="number" name="newpin" placeholder="4 Digit New Pin" required />
        <button type="submit" onclick="showalert()" >Change </button>
      </form>
    </div>
    </div>

  </div>
  <script >

  function showalert() {
	  
	  alert("Are you Sure Change Pin ? ");
	  
	}
  
  </script>
</body>
</html>
    