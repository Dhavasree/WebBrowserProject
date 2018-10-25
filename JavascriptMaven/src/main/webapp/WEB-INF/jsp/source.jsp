<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
 <script src="<c:url value="/resources/js/validate.js" />"></script>
  <!-- <script type="text/javascript">
function msg()
{
	alert("dfsdfs");
	msg1();
	}
	</script> -->
<title>Insert title here</title>
</head>
<body>
<form action="add" id="sourceTable" method="post" name="loginForm" style="border: 1px solid black;padding:10px;">
 <h1>Source</h1>
 <div class="form-group">
				<label for="driverName">DriverName:</label> <input type="text"
					name="driverName" id="driverName"/>
			</div>
			<div class="form-group">
				<label for="connectionURL">connectionURL:</label> <input
					type="text" name="connectionURL" id="connectionURL"/>
			</div>
			<div class="form-group">
				<label for="userId">userId:</label> <input type="text"
					name="userId" id="userId"/>
			</div>
			<div class="form-group">
				<label for="password">password:</label> <input type="password"
					name="password" id="password" value="" />
			</div>
			<button type="submit"
				class="btn btn-success">Connect</button>
 </form> 
</body>
</html>