/*
function msg()
{
alert("fdsh");
}*/
$(document).ready(function() {
	$('#sourceTable').submit(function(e) {
	  // e.preventDefault();
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
	   /*  if (password !="") {
	      $('#password').after('<span class="error">Invalid Password</span>');
	      count=1;
	    } */
	    if(count==0)
	    	{
	    	sourceFunction();
	    	return true;
	    	}
	    else
	    	{
	    	return false;
	    	}
	  });
	
});
	function sourceFunction()
	{
		alert("Success");
		return true;
           
	}
