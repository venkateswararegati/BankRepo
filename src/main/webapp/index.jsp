<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
a:link {
  color: white;
  text-decoration:none; 
}
/* visited link */
a:visited {
  color: white;
  text-decoration:none; 
}

/* mouse over link */
a:hover {
  color: red;
  text-decoration:none; 
}

/* selected link */
a:active {
  color: white;
  text-decoration:none; 
}
</style>
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color:SlateBlue;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: SlateBlue;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
/* @media (max-width: 1355px) {
  nav, article {
    width: 100%;
    height: auto;
  }
} */
</style>
</head>
<body>
<form>
<div id="links" style="background-color:green;width:1355px;
    font-size:25px; margin: 0 auto;">

	 <a href="/BankMiniProject/" style="margin-left: 190px;padding: 10px;">Home</a> |
		<a href="/BankMiniProject/bankloginpage/" style="display: inline-block;padding: 10px;" >Account creation</a>|
		<a href="/BankMiniProject/depositpage" style="display: inline-block;padding: 10px;"> Deposit</a>|
		<a href="/BankMiniProject/withdrawpage" style="display: inline-block;padding: 10px;">Withdraw</a>|
		<a href="/BankMiniProject/credentialspage" style="display: inline-block;padding: 10px;">Account info</a>|
		<a href="/BankMiniProject/userValidationPage" style="display: inline-block; padding: 10px;">Edit profile</a>
</div>
<div style="width:1355px;
     margin: 0 auto;">
<header>
  <h2>London Bank of India</h2>
</header>

<section>
  <nav>
    <ul >
      <li style="text-align:center;"><a href="/BankMiniProject/" style="display: inline-block;padding: 10px 40px;background-color:  SlateBlue;">Home</a></li>
      <hr>
         <li><img id="BankImg" alt="" src="https://svgshare.com/i/81v.svg" style="width: 300px ;height: 200px"></li>
          
    </ul>
  </nav>
  <article>
    <h1>London</h1>
    <blockquote>Londan Bank of India (LBI) is an Indian multinational, public sector banking and financial
     services statutory body. It is a government corporation statutory body headquartered in Hyderabad.
      LBI is ranked as 123th in the Fortune Global 500 list of the world's biggest corporations of 2016. </blockquote>
  </article>
</section>

<footer>
  <p><i><strong>&copy;</strong>&nbsp;copyrights reserved in 1997</i></p>
</footer>
</div>
</form>
</body>
</html>