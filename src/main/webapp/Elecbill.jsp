<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "com.Elecbill" %>
<%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ElectroGrid</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/Elecbill.js"></script>
</head>
<body >
	<div class="container"><div class="row"><div class="col-6">
	<h1>--Electric Bill Generation--</h1>
<br>
		 <div class="card">
   <div class="card-body">
			 <form id="formItem" name="formItem" method="post" action="Elecbill.jsp">
			 Account Number 
			<input id="AccountNumber" name="AccountNumber" type="text" 
			 class="form-control form-control-sm">
			<br> Account Holder Name
			<input id="name" name="name" type="text" 
			 class="form-control form-control-sm">
			<br> Unit Count 
			<input id="unitCount" name="unitCount" type="text" 
			 class="form-control form-control-sm">
			<br>Issued Month
			<input id="month" name="month" type="text" 
			 class="form-control form-control-sm">
			<br>
			
			
			<input id="btnSave" name="btnSave" type="button" value="Save" 
			 class="btn btn-primary">
			<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
			</form>
			</div>
			</div>
  		
  		<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divItemsGrid">
				 <%
				 Elecbill elecobj = new Elecbill(); 
				 		 out.print(elecobj.retriveElecbill());
				 %>
				</div>
	</div>
	</div>
	</div>
</body>
</html>