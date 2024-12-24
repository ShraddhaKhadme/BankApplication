<%@page import="com.bank.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Pin</title>
    <style>
        body{
            background-color: silver;
        }
        .form{
            
            margin-top: 200px;
            margin-left: 550px;
            width:20%;
            padding:30px;
            background-color: white;
            border-radius: 10px;
            border: 2px solid #8f8c8f;
            box-shadow: 0px 0px 25px #8f8c8f ;
           
        }
        .btn{
            text-decoration: none;
            color: white;
             background-color: #c55ad1;
            padding: 5px;
            width: 30%;
            height: 30px;
            position: relative;
            left:60px;
            border:none;
            text-transform:capitalize;
            
            margin-right:30px;
        }
        .h1{
        text-transform:uppercase;
            position: relative;
            left: 60px;
        }
        .input1{
            width: 90%;
             border:none;
            box-shadow: 0px 5px 15px #d1cdd1;
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
<body>

<%Customer c=(Customer)session.getAttribute("customer"); %>
<%String success=(String)request.getAttribute("success");
		if(success!=null) { %>
		<h3 class="success"> <%=success %></h3>
		<%} %>
		
		<%String fail=(String)request.getAttribute("fail");
		if(fail!=null) { %>
		<h3 class="fail"> <%=fail %></h3>
		<%} %>
		
		
		
    <form class="form " action="resetpin" method="post">
        <h1 class="h1">Reset Pin</h1>
        <div class="input">
        <label>Enter your Email</label>
        <br>
       
       		 <input type="email" class="input1" name="mail" placeholder="Enter Your mail-id"value="<%=c.getMail()%>" >
        <br>
        <br>
        <label>Enter New Pin</label>
        <br>
        <input type="password" class="input1" name="pin" placeholder="Enter new Pin">
        <br><br>
        <label>Re-Enter pin</label>
        <br>
        <input type="password" class="input1" name="pin" placeholder="Enter confirm pin">
        <br>
        <br>
        <input type="submit" class="btn" value="resetpin">
         
        <a href="dashboard.jsp" class="btn btn-primary">Back</a>
    </div>
    </form>
</body>
</html>