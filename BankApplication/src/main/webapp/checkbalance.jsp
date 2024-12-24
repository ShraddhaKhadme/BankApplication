<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Balance</title>
    <style>
        body{
            background-color: silver;
        }
        .form{
            border-radius: 10px;
           
            width: 30%;
            height: 250px;
            position:relative;
            top:150px;
            left: 580px;
            /* margin-top: 260px;
            margin-left: 180px; */
            background-color: white;
            border: 2px solid #8f8c8f;
            box-shadow: 0px 0px 25px #8f8c8f ;
        }
        .form .btn{
          
            list-style: none;
           
            text-decoration: none;
            color: white;
            background-color: #c55ad1;
            padding: 5px;
            width: 30%;
            height: 30px;
            border:none;
            text-transform:capitalize;
            position: relative;
            font-weight:bold;
            left:60px;
            margin-right:50px;
          	
           
        }
       
        .form .input
    {
    
        padding-left:20px;
        padding-top: 40px;
        font-weight: bolder;
    }
    .h2{
    text-transform:uppercase;
    	 padding-top: 20px;
        padding-left:100px;
        font-weight: bolder;
    }
    .input1{
     box-shadow: 0px 5px 15px #d1cdd1;
     border:none;
     height:20px;
        width:90%;
        
    }
    .success{
  		margin-top:20px;
  		text-align:center;
  		
    }
    .fail
    {
    	margin-top:20px;
  		text-align:center;
    }
    .btnn{
    margin-top:30px;
    width:20%;
    }
    </style>
</head>
<body>
<%@include file="header.jsp" %>
		<%String success=(String)request.getAttribute("success");
		if(success!=null) { %>
		<h1 class="success"> <%=success %></h1>
		<%} %>
		
		<%String fail=(String)request.getAttribute("fail");
		if(fail!=null) { %>
		<h3 class="fail"><%=fail %></h3>
		<%} %>
    <form class="form" action="checkbalance" method="post">
        <h2 class="h2">Check Balance</h2>
        
		
        <div class="input">
       <label >Enter your Pin </label>
       <br>
       <input type="password" class="input1" name="pin" placeholder="Enter your pin">
       <br>
       <br>
       <br>
       <input type="submit" value="checkbalance" class="btn btn-primary btn" >
       <a href="dashboard.jsp" class="btn btn-primary btnn">Back</a>      
      
    </div>
    </form>
</body>
</html>