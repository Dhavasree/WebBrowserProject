<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Table</title>
</head>
<style type="text/css">
#Table {
	float: left;
	border: 1px solid black;
}
#myProgress {
  width: 100%;
  background-color: #ddd;
}

#myBar {
  width: 1%;
  height: 30px;
  background-color: #4CAF50;
}
span.error {
	color: red;
	margin-left: 10px;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	  $('#button').click(function(e) {
		  e.preventDefault();
		  var count=0;
		  var sourceTable=$('#sourceTable').val();
		  var destTable=$('#destTable').val();
		  var forceMatch=$('#forceMatch').val();
		  var sourceSchema=$('#sourceSchema').val();
		  var destSchema=$('#destSchema').val();
		   $(".error").remove();
		  if (sourceTable.length < 1) {
		      $('#sourceTable').after('<span class="error">This field is required</span>');
		      count=1;
		    }
		  if (destTable.length < 1) {
		      $('#destTable').after('<span class="error">This field is required</span>');
		      count=1;
		    }
		  if (forceMatch.length < 1) {
		      $('#forceMatch').after('<span class="error">This field is required</span>');
		      count=1;
		    }
		  if (sourceSchema.length < 1) {
		      $('#sourceSchema').after('<span class="error">This field is required</span>');
		      count=1;
		    }
		  if (destSchema.length < 1) {
		      $('#destSchema').after('<span class="error">This field is required</span>');
		      count=1;
		    }
		  if(count==0){
		  columnFunction();
		  $('#column').show();
		  $('#button').attr("disabled", true);
		  }
	  });
		  $('#button2').click(function(e)
				  {
	 	          e.preventDefault();        
			  progressFunction();
			  $('#myBar').show();
			 $('#button2').unbind("click"); 
			/*  setTimeout(function () {
			        $("#myBar").show().fadeOut("slow");
			    }, 900000000);  */
	  
				  });
	 
});
function columnFunction() {
	$.ajax({
		type : 'post',
		url : 'column',
		data : $('form[name="Table"]').serialize(),
		success : function(response) {  
			if (response.validated) {
				var columnname=new Array();
				 columnname=response.colName;
				 var arr=columnname.length;
				for(var i=0;i<arr;i++)
				 {  
					if(columnname[i]!='')
						{
						alert(columnname[i]);
					var row='<tr><td><input type="text" name="destColumn" id="'+columnname[i]+'" value="" readonly="true"/></td></tr>';
					 $("#colAdd").append(row);
					 document.getElementById(columnname[i]).value=columnname[i];
					 var row1='<tr><td><input type="text" name="value" id="value"/></td></tr>';
					 $('#colValue').append(row1);
						}
					 }}}
	});
};
function progressFunction() {
	var elem = document.getElementById("myBar");   
	  var width = 10;
	  var id = setInterval(frame, 10);
	  function frame() {
	    if (width >= 100) {
	      clearInterval(id);
	      $('#myBar').hide();
	    } else {
	      width++; 
	      elem.style.width = width + '%'; 
	      elem.innerHTML = width * 1  + '%';
	    }
	 
	  }
	}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<body>
<form:form id="Table" name="Table" modelAttribute="table" commandName="table">
<div class="container">
<h1 >Table</h1>
			<div class="form-group">
	<label for="sourceTable">Source Table</label> <input type="text" class="form-control" name="sourceTable" id="sourceTable"  placeholder="Enter Source Table"/>
			</div>
<div class="form-group">
	<label for="destTable">Destination Table</label> <input type="text" class="form-control" name="destTable" placeholder="Enter Destination Table" id="destTable" />
			</div>
	<div class="form-group">
		<label for="forceMatch">Force Match</label> 
		<input type="text" class="form-control" name="forceMatch" placeholder="Enter Force Match" id="forceMatch" />
			</div>
			<div class="form-group">
				<label for="">Source Schema</label> <input type="text" class="form-control" name="sourceSchema" placeholder="Enter Source schema" id="sourceSchema" />
			</div>
			<div class="form-group">
				<label for="destSchema">Destination Schema</label> <input type="text" class="form-control"
					name="destSchema" placeholder="Enter Destination Schema" id="destSchema" />
			</div>
				<button id="button" name="button" class="btn btn-primary" >To Add Column</button>
			
			<div id="column" style="display: none;">
			<table border="1">
			<tr><th>DestinationColumn</th><th>Value</th></tr>
			<tr><td id="colAdd"></td><td id="colValue"></td></tr>
			</table>
			</div>
		
			<div class="form-group">
				<label for="clause">clause</label> <input type="text" class="form-control"
					name="clause" placeholder="Enter Clause" id="clause" />
			</div>
			<input name="save" type="submit" value="Transfer Records" id="button2" formaction="alltable" class="btn btn-success">			
			<input type="submit" value="CLOSE" formaction="closeConnection" class="btn btn-success"/>
				</div>
				<div id="myProgress" >
  <div id="myBar" style="display: none;">10%</div>
</div>
				</form:form>
				
</body>
</html>