<%-- 
    Document   : mainPage
    Created on : Mar 19, 2017, 2:47:53 AM
    Author     : Jeryl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<title>Pokemon Catcher - Gotta catch em all</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>
<body>

<!-- Header -->
<header class="w3-container w3-red w3-center w3-padding-30">
  <!--<h1 class="w3-margin w3-jumbo">START PAGE</h1>-->
  <img src="images/pokecatcher.png" width="500">
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
      <center>
      <form action="http://localhost:8090">
          <input type="hidden" name="lat" value="1.296568"/>
          <input type="hidden" name="long" value="103.852119"/>
          <table>
              <tr>
                  <td>Trainer ID: </td>
                  <td><input type="text" name="userID" value="" /></td>
              </tr>
              <tr>
                  <td>Wild Pokemon ID: </td>
                  <td><input type="text" name="pokeID" value="" /></td>
              </tr>
              <tr><td></td></tr>
              <tr>
                  <td><input type="submit" value="Submit" /></td>
              </tr>
          </table>
      </form>
      </center>
  </div>
</div>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
   <a href="#" class="w3-hover-text-indigo"><i class="fa fa-facebook-official"></i></a>
   <a href="#" class="w3-hover-text-red"><i class="fa fa-pinterest-p"></i></a>
   <a href="#" class="w3-hover-text-light-blue"><i class="fa fa-twitter"></i></a>
   <a href="#" class="w3-hover-text-grey"><i class="fa fa-flickr"></i></a>
   <a href="#" class="w3-hover-text-indigo"><i class="fa fa-linkedin"></i></a>
 </div>
</footer>

</body>
</html>
