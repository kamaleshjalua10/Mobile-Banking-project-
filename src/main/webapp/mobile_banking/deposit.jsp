<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Deposit Money </title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="deposit.css">
</head>
<body>
  <div class="container">

    <div class="login-box">
      <img src="mainbank.png" alt="">
      <h2> Deposit Money </h2>
      <form action="deposit_java.jsp" method="post">
      
        <input type="number" name="amount" placeholder="Money" required>
        <br>
        <input type="number" name="pin" placeholder="PIN" required>
        
        <div class="options">
          <label><input type="checkbox" required> Remember me</label>
        </div>
        <button type="submit"> Deposit </button>
    </form>
    </div>
    <div class="welcome-section">
      <div class="planet-glow"></div>
      <h1> Welcome </h1>
      
      <p> A banking deposit page allows users to securely  add <br>funds to their bank account. It provides options <br>for selecting  the deposit amount, source ,<br> and method , ensuring a  smooth and <br> <strong> safe transaction process. </strong> </p>
      <img id="img1" src="deposit3d.png" alt="">
      <img id="img2" src="deposit3d.png" alt="">
      <img id="img3" src="bank3d.png" alt="">

    </div>
  </div>
</body>
</html>