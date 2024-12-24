<%@page import="com.bank.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
    <style>
        .body{
            background-color: silver;
        }
        .form{
           
            margin-top: 200px;
            margin-left: 500px;
            width:30%;
            padding:30px;
            background-color: white;
            border-radius: 10px;
           border: 2px solid #8f8c8f;
            box-shadow: 0px 0px 25px #8f8c8f ;
            font-weight: bolder;
        }
        
        .btnn{
            text-decoration: none;
            color: white;
           background-color: #c55ad1;
            padding: 5px;
            width: 30%;
            height: 28px;
            position: relative;
            left:80px;
            font-weight:bold;
            text-transform:capitalize;
            border:none;
           
        }
        .btn{
            text-decoration: none;
            color: white;
            background-color: #c55ad1;
            padding: 5px;
            width: 30%;
            height: 30px;
            position: relative;
            left:90px;
            margin-left:30px;
           
           
        }
        .h1{
        text-transform:uppercase;
            position: relative;
            left: 70px;
        }
        .input1{
          border:none;
            box-shadow: 0px 5px 15px #d1cdd1;
            width: 100%;
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
    </style>
</head>
<body class="body">
<%Customer c=(Customer)session.getAttribute("customer"); %>
<%String success=(String)request.getAttribute("success");
		if(success!=null) { %>
		<h3 class="success"> <%=success %></h3>
		<%} %>
		
		<%String fail=(String)request.getAttribute("fail");
		if(fail!=null) { %>
		<h3 class="fail"> <%=fail %></h3>
		<%} %>
    <form class="form " action="update" method="post">
        <h1 class="h1">Update Account</h1>
        <div class="input">
        <label>Enter your name</label> 
        <br>
		<input type="text" class="input1" name="name"placeholder="Enter Username" value="<%=c.getName()%>" >
        <br>
        <br>
			 <label>Enter your Phone</label> 
             <br>
			 <input type="text" class="input1" name="phone"placeholder="Enter phone number" value="<%=c.getPhone()%>" > 
             <br>
             <br>
			 <label>Enter your Email</label> 
             <br>
			 <input type="email" class="input1" name="mail" placeholder="Enter Your mail-id"value="<%=c.getMail()%>" >
             <br>
             <br>
            
             <input type="submit" class="btnn" value="update">
             <a href="dashboard.jsp" class="btn btn-primary">Back</a>
            </div>
    </form>
</body>
</html>