<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
  "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
<title>Contact Management Screen</title>
</head>
<body>
  <div align="center">
    <h1>List of Messages from Customers</h1>
    *Note: A login feature restricting access to this page will be coded at a later date.
    <br /><br />
    <table border="1" cellpadding="4">
      <th>First Name</th>
      <th>Last Name</th>
      <th>Telephone</th>
      <th>Email</th>
      <th>Message</th>
      <th>Created</th>
      <th>Action</th>
      <c:forEach var="contact" items="${listContact}">
        <tr>
          <td>${contact.firstName}</td>
          <td>${contact.lastName}</td>
          <td>${contact.telephone}</td>
          <td>${contact.email}</td>         
          <td>${contact.message}</td>
          <td>${contact.created}</td>
          <td><a href="deleteContact?id=${contact.id}">Delete</a></td>
        </tr>
      </c:forEach>
    </table>
    <br />
    <a href="redirect.jsp">Return to Main Page</a>
  </div>
</body>
</html>