<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Create Successfully </title>

    <style>

        body {
  margin: 0;
  padding: 0;
  font-family: 'Arial', sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  background-image: url('earth.jpg');
  background-size: cover;
}
.container {
  height: 300px;
  width: 600px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  box-shadow: 0px 0px 25px rgba(56, 218, 105, 0.3);
  border-radius: 15px;
  position: relative;
  top: 180px;
  background-color: transparent;
  backdrop-filter: blur(10px);
  animation:inup 2s ease-out;
}

.container h1 {
  color: #fff;
  font-size: 2rem;
  /* margin-bottom: 20px; */
}
.container h2 {
  color: #26f207;
  font-size: 1.5rem;
  /* margin-bottom: 20px; */
}
.container a{
    text-decoration: none;
}

@keyframes inup {
      from {
        transform: translateY(260px);
        opacity: 0;
      }
      to {
        transform: translateY(0);
        opacity: 1;
      }
    }

    </style>

</head>
<body>

<!-- <%

    String  Name = (String) session.getAttribute("username");

%>     -->

    <div class="container">
        <h1> <%= Name %></h1>
        <br>
       <h2>  <a href="loginpage.jsp">  Your bank has been Created 👉 </a></h2>  
      
  </div>

    
</body>
</html>