<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#start{
	float: left;
}
#end{
	float: right;
}
</style>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/js/bootstrap-datetimepicker.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.min.css">
 <script type="text/javascript">
 $(function (e) {
     $('#datetimepicker1').datetimepicker({ 
     	 minDate: new Date(),
     	 format: 'DD/MM/YYYY HH:mm ', });
   $('#datetimepicker2').datetimepicker({ 
     	 format: 'DD/MM/YYYY HH:mm '
     });});
 $(document).ready(function() {
 $('#date').submit(function(e){
     var startdate= $("#date1").val();
     var enddate= $("#date2").val();
       var date1=startdate.substring(0,10);
     var date2=enddate.substring(0,10);  
     from = moment(startdate, 'DD/MM/YYYY HH:mm'); 
 	to = moment(enddate, 'DD/MM/YYYY HH:mm'); 
 	 from1= moment(date1, 'DD/MM/YYYY');
 	 to1 = moment(date2, 'DD/MM/YYYY');
 days = to1.diff(from1, 'days') ;
 /* alert(date1);
 alert(days); */
 var hours =Math.round((to.valueOf()-from.valueOf()) / (3600*1000));
/*  alert(hours); */
 $(".error").remove();
 if(Date.parse(from1) < Date.parse(to1)){
	   alert("valid Date Range");
	   if( hours==4 || hours < 4){
		   alert("success");
		   return true;
		   }
	   else{
		 alert("Hours should be less than or equal to 4");
		 return false;
		 }}
 else if(Date.parse(from1) == Date.parse(to1)){
	 if( hours==4 || hours < 4){
		 alert("success");
		 return true;
		 } else
		 {
	alert("Hours should be less than or equal to 4");
			 return false;
			 }}
	else{
		alert("End date must be greater than start date");
		 return false;
	}
});
 }); 
 </script> 
        
</head>
<body>
<form id="date" >
<div class="container">
  <div id="start" class="row">
        <div class='col-sm-6'>
        <h4>Start Date And Time</h4>
            <div class="form-group">
                <div class='input-group date' id='datetimepicker1'>
                    <input type='text' class="form-control" id="date1" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="container">
    <div id="end" class="row">
        <div class='col-sm-6'>
        <h4>End Date And Time</h4>
            <div class="form-group">
                <div class='input-group date' id='datetimepicker2'>
                    <input type='text' class="form-control" id="date2"/>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
    </div>
    </div>
   <button type="submit"
				class="btn btn-success">Connect</button>
    </form>
</body>
</html>