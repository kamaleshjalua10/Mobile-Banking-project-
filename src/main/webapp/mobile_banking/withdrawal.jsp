<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="withdrawal.css">
  <title> Withdrawal Money</title>
  
</head>
<body>
  <div class="wrapper">

    <div class="image-section">

      <img id="character-img3" src="character.png" alt="">

       <img class="money-img" id="money" src="ethereum.png" alt="">
      <img class="money-img2" id="money1" src="bitcoin.png" alt="">

    </div>
    <div class="form-section">
      <div class="top-link">
       <a href="profilepage.jsp"> <button >←</button></a>
        <a href="#">Already have an account</a>
      </div>
      <h2> Withdrawal Money</h2>
      
      <form action="withdrawal_java.jsp" method="post">
      <div class="form-group">
        <input type="number" name="amount" placeholder="Money"required>
      </div>
      <div class="form-group">
        <input type="number" name="pin" placeholder="PiN"required>
      </div>
      <div class="options">
          <label><input type="checkbox" onclick="startAnimation()"required > Remember me</label>
        </div>
      <div class="button-group">
        <button type="submit">Withdrawal</button>
        <button class="arrow-btn">→</button>
      </div>
      </form>
      <p class="small-text">
        By signing up, you agree to  <a href="#" style="color: #9cff7d">Terms of Service</a>, <a href="#" style="color: #9cff7d">Privacy Policy</a>, and <a href="#" style="color: #9cff7d">Data Usage</a>.
      </p>
    </div>
  </div>

<script >


function startAnimation() {
  const money = document.getElementById('money');
  const money1 = document.getElementById('money1');
  // const title = document.getElementById('title');

  // Set transition for smooth movement over 3 seconds
  money.style.transition = 'transform 1s linear, opacity 3s';
  money1.style.transition = 'transform 1s linear, opacity 3s';
  // title.style.transition = 'transform 3s linear';

  // Move the images up
  money.style.transform = 'translateY(245px)';
  money1.style.transform = 'translateY(229px)';

  // Set opacity
  money.style.opacity = '1';
  money1.style.opacity = '1';

  // Move title to its position
  title.style.transform = 'translateY(0)';
}


</script>

</body>
</html>
    