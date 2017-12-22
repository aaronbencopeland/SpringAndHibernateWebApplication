<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!-- This allows the custom Spring form to work. -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>YGD - Homepage</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dentist Website</title>
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <link href="./resources/css/custom.css" rel="stylesheet">
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' 
    type='text/css'>
</head>
<body>
  <nav class="navbar navbar-inverse navbar-static-top">
    <div class="container">
      <div class="navbar-header">
        <!-- This button is invoked when the window is collapsed and presents the menu items 
          in the form of a dropdown menu. -->
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
          data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	      <span class="sr-only">Toggle navigation</span>
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	    </button>
        <a class="navbar-brand" href="#"><img src="./resources/images/dentist-158225_1280.png" 
          alt="" width="25" height="25" class="icon">&nbsp;Yank'em Gently Dental</a>
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
          <li>
            <a href="redirect.jsp">Welcome</a>
          </li>
	      <li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" 
	          aria-haspopup="true" aria-expanded="false">
	          About Us<span class="caret"></span>
	        </a>
	        <ul class="dropdown-menu">
	          <li>
	            <a href="aboutthedoctor.html">Meet the Doctor</a>
	          </li>
	          <li>
	            <a href="aboutthestaff.html">Meet the Staff</a>
	          </li>
            </ul>
	      </li>
	      <li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" 
	          aria-haspopup="true" aria-expanded="false">
              Our Services<span class="caret"></span>
            </a>
	        <ul class="dropdown-menu">
	          <li>
	            <a href="pageunderconstruction">Dental Hygiene</a>
	          </li>
              <li>
                <a href="pageunderconstruction">Implants</a>
              </li>
	          <li>
	            <a href="pageunderconstruction">Cosmetic</a>
	          </li>
	          <li>
	            <a href="pageunderconstruction">Endodontics</a>
	          </li>
	          <li>
	            <a href="pageunderconstruction">Restorative</a>
	          </li>
	          <li>
	            <a href="pageunderconstruction">Pediatric</a>
	          </li>
	          <li>
	            <a href="pageunderconstruction">Periodontics</a>
	          </li>
              <li>
                <a href="pageunderconstruction">Oral Surgery</a>
              </li>
	          <li>
	            <a href="pageunderconstruction">Orthodontics</a>
	          </li>
            </ul>
	      </li>
	      <li>
	        <a href="pageunderconstruction">New Patients</a>
	      </li>
	      <li>
	        <a href="pageunderconstruction">Make an Appointment</a>
	      </li>
	      <li>
	        <a href="newContact.html">Contact Us</a>
	      </li>
	    </ul>
      </div>
    </div>
  </nav>
  <div class="jumbotron">
    <div class="container">
      <div align="center">
        <h1>Contact Us</h1>
        Whether you need to know about a specific procedure or just learn about our practice in general, 
        please feel free to send a message. Contact us using the form below.
        <br /><br />
        <form:form action="saveContact" method="post" modelAttribute="contact" style="color:black;">
          <table>
            <form:hidden path="id"/>
            <tr>
              <td>First Name:</td>
              <td><form:input path="firstName" /></td>
            </tr>
            <tr>
              <td>Last Name:</td>
              <td><form:input path="lastName" /></td>
            </tr>
            <tr>
              <td>Telephone:</td>
              <td><form:input path="telephone" /></td>
            </tr>
            <tr>
              <td>Email:</td>
              <td><form:input path="email" /></td>
            </tr>
            <tr>
              <td>Message:</td>
              <td><form:textarea path="message" /> </td>
            </tr>
            <tr>
              <td colspan="2" align="center"><input type="submit" value="Send"></td>
            </tr>
          </table>
        </form:form>
        <br />
        <a href="redirect.jsp">Return to Main Page</a>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <h3>Our Location</h3>
        <!-- Map code automatically generated at http://www.embedgooglemap.net/ -->
        <div class="mapouter" style="">
          <div class="gmap_canvas">
            <iframe width="100%" height="200" id="gmap_canvas" 
              src="https://maps.google.com/maps?q=700 Geipe Road, Baltimore, 
                Maryland&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no"                               
                marginheight="0" marginwidth="0">
            </iframe>
          </div>
            <style>.mapouter{overflow:hidden;height:200;width:100%;}.gmap_canvas 
              {background:none!important;height:200;width:100%;}</style>
        </div>
      </div>
      <div class="col-md-4">
        <h3>Summary</h3>
        <p>
          Dr. Yankers is a seasoned professional having 25 years of experience in the army. 
          During his service, he developed new practices for tooth extraction that are still 
          in use by the special forces. Our practice is located in West Baltimore. 
          We have won many awards for our excellence!
        </p>
      </div>
      <div class="col-md-4">
        <h3>Office Hours</h3>                      
        <table>
          <tr><th>Monday</th><td>8:00 AM - 5:00 PM</td></tr>
          <tr><th>Tuesday</th><td>8:00 AM - 5:00 PM</td></tr>
          <tr><th>Wednesday</th><td>8:00 AM - 5:00 PM</td></tr>
          <tr><th>Thursday</th><td>8:00 AM - 5:00 PM</td></tr>
          <tr><th>Thursday</th><td>8:00 AM - 5:00 PM</td></tr>
          <tr><th>Saturday</th><td>Closed</td></tr>
          <tr><th>Sunday</th><td>Closed</td></tr>
        </table>
      </div>
    </div>
  </div>
  <br />
  <div id="footer" style="background-color:black; color:white; text-align:center; 
    padding-top: 15px; padding-bottom:15px;">
    &copy; 2017 Aaron Ben Copeland All Rights Reserved &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="listOfContacts"><b>Doctor & Staff Login</b></a>
  </div> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="./resources/js/bootstrap.min.js"></script>
</body>
</html>