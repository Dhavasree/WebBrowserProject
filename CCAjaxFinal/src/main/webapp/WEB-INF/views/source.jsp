<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajax</title>

<style type="text/css">
#source
{
 float:left;
   border: 2px solid black;
}  
#destination
{
 float:left;
   border: 2px solid black;
}  
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<script type="text/javascript">
$(function(){
	$("#dname_error").hide();
	$("#conn_error").hide();
	$("#uname_error").hide();
	$("#pw_error").hide();
	 
	var  error_dname=false;
	var  error_conn=false;
	var  error_uname=false;
	var  error_pw=false;
	
	$("#dname").focusout(function(){
		check_dname();
	});
	$("#conn").focusout(function(){
		check_conn();
	});
	$("#uname").focusout(function(){
		check_uname();
	});
	$("#pw").focusout(function(){
		check_pw();
	}); 
	function check_dname()
	{
		var pattern=/^[a-z]{10}$/;
		var dname=$('#dname').val();
		var len = $('#dname').val().length;
        if(pattern.test(dname) && len==10 && dname!='')
     	   {
        	$("#dname_error").hide();
			$("#dname").css("border-bottom","2px solid #34F458");
			$("#dname").css("background-color", "#FFFFCC");
     	   }
        else
        	{
        	$("#dname_error").html("should contain 10 characters");
			$("#dname_error").show();
			error_dname=true;
        	
        	}
           
	}
	function check_uname()              
	{
		var pattern=/^[a-z]{2}$/;
		var uname=$("#uname").val();
		if(pattern.test(uname) && uname!=''){
			$("#uname_error").hide();
			$("#uname").css("border-bottom","2px solid #34F458");
			$("#uname").css("background-color", "#FFFFCC");
		}
		else
			{
			$("#uname_error").html("should contain only two characters");
			$("#uname_error").show();
			error_uname=true;
			}
	}
	function check_conn()
	{
		var pattern=/^[a-z]{3,}$/;
		var conn=$("#conn").val();
		if(pattern.test(conn) && conn!=''){
			$("#conn_error").hide();
			$("#conn").css("border-bottom","2px solid green");
			$("#conn").css("background-color", "#FFFFCC");
		}
		else
			{
			$("#conn_error").html("should contain only characters");
			$("#conn_error").show();
			error_conn=true;
			}
	}
	function check_pw()
	{
		if($("#pw").val()=='')
			{
			$("#pw_error").hide();
			$("#pw").css("border-bottom","2px solid #34F458");
			$("#pw").css("background-color", "#FFFFCC");
			}
		else
			{
			$("#pw_error").html("Please make password as empty");$("#pw_error").show();
			}
	}
	$("#source").submit(function(){
	 	 error_dname=false;
		  error_conn=false;
		 error_uname=false;
		  error_pw=false;		  
		  check_dname();
		  check_uname();
		  check_conn();
		  check_pw(); 
		  if(error_dname ===false && error_conn===false && error_uname===false) 
			  {
			  alert("Successfull");
			  return true;
			  }
		  else
			  {
			  alert("error");
			  return false;
			  }
	});
	
});
</script>
</head>
<body>
  </head>
<body>
 <form action="login" id="source" method="post" name="loginForm" style="border: 1px solid black;padding:10px;">
 <h1>Source</h1>
  <div id="resultContainer" style="display: none;">
 <hr/>
 <h4 style="color: green;"> Source Connected Successfully</h4>
  <pre style="color: green;">
    <code></code>
   </pre>
</div>
 <div>
  <label class="text-primary">Driver Name</label>
 <input type="text" id="dname" name="driverName">
 <span class="error" id="dname_error"></span>
 </div>
 <div>
  <label class="text-primary">Connection String</label>
 <input type="text" id="conn" name="connectionString" >
 <span class="error" id="conn_error"></span>
 </div>
 <div>
  <label class="text-primary">User name</label>
 <input type="text" id="uname" name="userName">
 <span class="error" id="uname_error"></span>
 </div>
 <div>
  <label class="text-primary">password</label>
 <input type="text" id="pw" name="password" >
 <span class="error" id="pw_error"></span>
 </div>
 <button type="submit" class="btn btn-success">Connect</button>
 </form>
</body>
</html>