<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/edit.js"></script>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
<table id="userdata" cellpadding="10" cellspaceing="10" height="50%" width="80%" >
  <tr><td>Id : </td><td><input type="text" name="userid" id="userid" value=""></td></tr>
  <tr><td>First Name : </td><td><input type="text" name="fname" id="fname" value=""></td></tr>
  <tr><td>Last Name : </td><td><input type="text" name="lname" id="lname" value=""></td></tr>
  <tr><td>Email : </td><td><input type="text" name="email" id="email" value=""></td></tr>
  <tr><td>Mobile : </td><td><input type="text" name="mobile" id="mobile" value=""></td></tr>
  <tr><td><button type="button" id="updatedata" onclick="updatedata()">Update</button></td></tr>
  </table>
</body>
</html>
