<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#source {
	float: left;
	border: 2px solid black;
	
}
.error {
  color: red;
  margin-left: 5px;
}
 
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
  $(document).ready(function() {    
	  $('#sourceTable').submit(function(e) {
	    var count=0;
	    var driverName = $('#driverName').val();
	    var connectionURL = $('#connectionURL').val();
	    var userId = $('#userId').val();
	    var password = $('#password').val();
	    $(".error").remove();
	    if (driverName.length < 1) {
	      $('#driverName').after('<span class="error">This field is required</span>');
	      count=1;
	    }
	    if (connectionURL.length < 1) {
	      $('#connectionURL').after('<span class="error">This field is required</span>');
	      count=1;
	    }
	    if (userId.length < 1) {
	      $('#userId').after('<span class="error">This field is required</span>');
	      count=1;
	    }
	    if(count==0)
    	{
    	alert("success");
    	}
  });
  });  
	    </script>
</head>
<body>
<form id="sourceTable"  name="sourceconnection" class="form-signin">
		<div id="source">
			<h1 align="center">Source</h1>
			<div class="form-group">
				<label for="driverName">DriverName:</label> <input type="text"
					name="driverName" id="driverName" value="org.h2.Driver" />
			</div>
			<div class="form-group">
				<label for="connectionURL">connectionURL:</label> <input
					type="text" name="connectionURL" id="connectionURL"
					value="jdbc:h2:tcp://localhost/~/test" />
			</div>
			<div class="form-group">
				<label for="userId">userId:</label> <input type="text"
					name="userId" id="userId" value="sa" />
			</div>
			<div class="form-group">
				<label for="password">password:</label> <input type="password"
					name="password" id="password" value="" />
			</div>
			<button type="submit"
				class="btn btn-success">Connect</button>

		</div>
	</form>
</body>
</html>