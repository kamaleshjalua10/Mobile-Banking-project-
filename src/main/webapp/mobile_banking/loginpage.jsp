<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>LogIn Page</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="loginpage.css" />
</head>
<body>
  <div class="container">
    <div class="left">
      <h5 data-text="&nbsp;NOBARA BANK &nbsp;">&nbsp;<span>  Please LogIn  </span>    &nbsp;</h5>
      <p> Secure</p>
      <!-- <h1>POWERED BY <br> CREATORS AROUND <br> THE <span>WORLD.</span></h1> -->
       <h1>WORLD  <br> LARGEST  BANK <span>NOBARA.</span></h1>
      <p id="text">Don't have Account?</p>
      <a href="createaccount.jsp"> Create Account → </a>
      <div class="about-box">
        <img src="3dcreate.png" alt="image" >
        <p>About us :- <br><br>A banking login page typically requires a <strong> mobile number </strong> and <strong>password </strong> , provides secure access to a user's personal or business bank account. often with added security features like  authentication to ensure data protection.</p>
        <!-- <p>About us<br> Over <strong>3 million</strong> free high-resolution images brought to you by the world's most generous community of photographers.</p> -->
      </div>
    </div>

    <div class="right">
      <div class="login-card">
          <h2>Login to your Account</h2>
          <form action="loginpage_java.jsp" method="post">
              <input type="text" name="phonenumber" placeholder="Mobile number" required>
              <input type="password" name="password" placeholder="Password"required>
              <div class="remember">
                <input type="checkbox"required>
                <label>Remember me</label>
              </div>
              <div class="forgot"><a href="#">Forgot your password?</a></div>
              <button type="submit">login</button>

          </form>
      </div>
    </div>
  </div>
</body>
</html>
    