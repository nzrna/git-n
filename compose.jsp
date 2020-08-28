<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose</title>
<script src="/ecollege/js/validation.js"></script>
<script>
	function main() {
		var status=true
		var userid = document.getElementById("txtrecid").value
		var usersubject = document.getElementById("txtsubject").value
		var usermsg = document.getElementById("txtmsg").value
		var userdate = document.getElementById("txtdate").value
	
		if(checkEmpty(userid)==false)//false
		{
			document.getElementById("msgrecid").innerHTML="receiver's id required"
			document.getElementById("txtrecid").focus()
			status=false
		}
		if(checkEmpty(usersubject)==false)//false
		{
			document.getElementById("msgsubject").innerHTML="Subject is required"
			document.getElementById("txtsubject").focus()
			status=false
		}
		if(checkEmpty(usermsg)==false)//false
		{
			document.getElementById("msgmsg").innerHTML="Message is required"
			document.getElementById("txtmsg").focus()
			status=false
		}
		if(checkEmpty(userdate)==false)//false
		{
			document.getElementById("msgdate").innerHTML="Date is required"
			document.getElementById("txtdate").focus()
			status=false
		}
		
		return status
		
		
	}
</script>




</head>
<body bgcolor="black">
<div id="center"
		style="margin-top: 50px; margin-left: 500px; width: 600px; height: 500px; background-color: grey; float: left">
		<h1 align="center">Composer's Form</h1>
		<form action="/ecollege/Compose" method="post"
			onsubmit="return main()">
			<table
				style="margin-top: 100px; margin-left: 100px; width: 200px; height: 300px; background-color: white">
				<tr>
					<th>ReceiverId</th>
					<th><input type="email" name="txtrecid" id="txtrecid"
						placeholder="Enter id here"> <br><span id="msgrecid"
						style="color: red"></span></th>
				</tr>

				<tr>
					<th>Subject</th>
					<th><input type="text" name="txtsubject" id="txtsubject"
						placeholder="Enter subject here"> <br><span id="msgsubject"
						style="color: red"></span></th>
				</tr>
				<tr>
					<th>Message</th>
					<th><textarea name="txtmsg" id="txtmsg" rows=5 cols=40
						placeholder="Enter message here"></textarea><br><span id="msgmsg"
						style="color: red"></span></th>
				</tr>
				<!-- <tr>
					<th>Date</th>
					<th><input type="date" name="txtdate" id="txtdate"
						> <br><span id="msgdate"
						style="color: red"></span></th>
				</tr> -->
				<tr align="center">
						<th colspan="2"><button type="submit" class="btn btn-primary">Submit</button></th>
					</tr>
</table>
</form>
</div>


</body>
</html>