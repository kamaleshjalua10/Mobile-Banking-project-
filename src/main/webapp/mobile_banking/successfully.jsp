<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <title> Successfully</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>

  body {
   margin: 0;
  padding: 0; 
  background-color: #d2d2d2;
}

.container{
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 93vh;
  width: 96vw;
  background-image: url('Cube.jpg');
  background-size: cover;

  position: relative;
  top: 30px;
  left:25px ;
  border-radius: 17px;
  box-shadow: 5px 5px 25px black;
}

img{
  animation: big-to-small 2s ease-in-out  ;
}

@keyframes big-to-small {
      from {
        transform: scale(0.5);
        opacity: 0;
      }
      to {
        transform: scale(1.2);
        opacity: 1;
      }
    }

</style>



</head>
<body>


  <div class="container">

   <a href="profilepage.jsp"> <img src="successfully.png" alt=""> </a>

  </div>
  
</body>
</html>
