<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import ="java.util.Random" %>   
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Create Account </title>
  <link rel="stylesheet" href="createaccount.css">
</head>
<body>

  <img src="3dcreateform.png" alt="" id="box">

  <form action="createaccount_java.jsp" method="post" class="form-container">
    <h2>Create Account</h2>

    <div class="input-group">
      <input type="text" name="c_name" id="name" placeholder="  " required />
      <label for="name">Full Name</label>
    </div>

    <div class="input-group">
      <input type="number" name="c_mobile_no" id="mobile" placeholder=" " required />
      <label for="mobile">Mobile No</label>
    </div>

    <div class="input-group">
      <input type="password" name="c_password" id="pin" placeholder=" " required />
      <label for="pin">Create Profile Password</label>
    </div>

    <div class="input-group">
      <input type="number" name="c_account_no" id="account" placeholder=" " required />
      <label for="account">Given Account No</label>
    </div>

    <div class="input-group">
      <input type="number"name="c_pin" id="pin" placeholder=" " required />
      <label for="pin">Create 4 Digit Account PIN</label>
    </div>

    <div class="input-group">
      <input type="email"  name="c_email" id="email" placeholder=" " required />
      <label for="email">Email</label>
    </div>

    <div class="input-group">
      <input type="date" name="c_dateofbirth" id="dob" placeholder=" " required />
      <label for="dob">Date of Birth</label>
    </div>

    <div class="input-group">
      <input type="text" name="c_address" id="village" placeholder=" " required />
      <label for="village">Village</label>
    </div>

    <div class="input-group">
      <input type="date" name="c_date"  id="date" placeholder=" " required />
      <label for="date">Date</label>
    </div>

    <div class="gender-box">
      <label><input type="radio" name="c_gender" value="male" required> Male</label>
      <label><input type="radio" name="c_gender" value="female"> Female</label>
    </div>
    

    <div class="remember">
    <input type="checkbox" id="box1" onclick="startAnimation()" required >
    <label for="terms">I agree to the Terms and Conditions</label>
    </div>

    <div class="form-actions">
      <button type="submit">Sign Up</button>
    </div>

    <div class="extra-links">
      <p>Already a member ? <a href="#">signIn now</a></p>
    </div>

  </form>

  <div class="create-a-div">


    <div class="account-no">

      <% 
      Random r=new Random();	
      long acno=r.nextLong(900000000000L);	
      %>
      <h2>Your Account number  </h2>
      <br>
      <span><%= acno %></span>

    </div>

    <img src="mainbank.png" alt="" id="mainbank">

    <div class="parag-div">
      <p> <strong>The Nobara Bank </strong> Create Account page allows new users to open a  savings or current account quickly and securely.It  collects ess ential  personal details such as name,  contact   information, identification  proof,  and  preferred   account  type. The page  is user- friendly   and  guides  appli  cants step - by-step  through the   registrationb  process. Upon successful data  submission,  users receive  a confirmation and   instructions for <strong> activation   account </strong> </p>
    </div>

    <img src="3dformright.png" alt="" id="img-man">

  </div>



<script >

  function startAnimation() {
  document.getElementById('box').style.transform = 'translateX(295px)';
  title.style.opacity = 1;
  title.style.transform = 'translateY(0)';
}

</script>

</body>
</html>
    