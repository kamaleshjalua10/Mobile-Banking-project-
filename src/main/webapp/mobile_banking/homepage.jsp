<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Home page </title>
  <link rel="stylesheet" href="homepage.css" />

</head>
<body>

  <header class="navbar">
    <!-- <div class="logo">BANK</div> -->
    <nav class="nav-links">
      <a href="#">About</a>
      <a href="#">services</a>
      <a href="#">Contact Us </a>
      <a href="#">FeedBack</a>
    </nav>
    <div class="auth-buttons">

      <a href="loginpage.jsp">
        <button class="login">Login</button>
      </a>

      <a href="createaccount.jsp">
        <button class="signup">Sign up</button>
      </a>

    </div>
  </header>
<!-- </div> -->
  <main class="hero-section">
    <div class="hero-text">
      <img src="homepagew.png" alt="">
      <h1>Welcome To <span class="highlight">Nobara</span> Bank 💫</h1>
      <p>The Nobara Bank main home page serves as the central hub for all banking services, offering easy navigation to key features like account overview, transfers, payments, and support. It provides a user-friendly interface with quick access to login, balance check, and latest updates or offers. Designed for both convenience and security, the homepage ensures a smooth banking experience for all users.</p>
      <button class="cta">Get Started</button>
    </div>
    <div class="hero-image">
      <img src="homepageman.png" alt=" laptop" />
    </div>
  </main>


  <section class="cards-section">
    <div class="card">
      <h2>Security</h2>
      <p>prioritizes user security with advanced encryption, two-factor authentication, and secure login protocols to protect customer data. </p>
      <a href="#">Explore partners &rarr;</a>
    </div>
    <div class="card">
      <h2>Mobile Banking</h2>
      <p>Mobile Banking offers a convenient and secure way to manage your finances on the go. With the mobile app, users can check balances, transfer funds, pay bills, and receive real-time alerts anytime, anywhere.</p>
    </div>
    <div class="card">
      <h2>OTher Details</h2>
      <p> Other Details page provides users with additional information such as branch locations, interest rates, service charges, and banking policies. 
      </p>
    </div>
  </section>

  <script>

  document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll(".card").forEach(card => {
    card.style.opacity = 0;
    card.style.transform = "translateY(30px)";
  });

  setTimeout(() => {
    document.querySelectorAll(".card").forEach((card, i) => {
      setTimeout(() => {
        card.style.transition = "all 0.6s ease";
        card.style.opacity = 1;
        card.style.transform = "translateY(0)";
      }, i * 150);
    });
  }, 300);
});


  </script>
</body>
</html>
    