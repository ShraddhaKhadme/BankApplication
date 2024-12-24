<%@page import="com.bank.Servlet.deposit"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deposit</title>
    <style>

        body{
           background-color: silver;
        }
        .form{
            position: absolute;
            margin-top: 150px;
            margin-left: 550px;
            padding:50px;
            background-color: white;
             border: 2px solid #8f8c8f;
            box-shadow: 0px 0px 25px #8f8c8f ;
            border-radius: 25px;
            width: 20%;
            font-weight: bolder;
        }
        .input{
            /* padding: 0px; */
           border-color:#ee9cf7 ;
        }

        .h1{
        	text-transform:uppercase;
            margin-left:30px;
            margin-top: 30px;
            position: relative;
            /* left:20px; */

        }
        .btn{
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
            left:70px;
            margin-right:40px;
            
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
<body>
<%String deposit=(String)request.getAttribute("deposit");
		if(deposit!=null) { %>
		<h1 class="success"> <%=deposit %></h1>
		<%} %>
		
<%String success=(String)request.getAttribute("success");
		if(success!=null) { %>
		<h1 class="success"> <%=success %></h1>
		<%} %>
		
		<%String fail=(String)request.getAttribute("fail");
		if(fail!=null) { %>
		<h3 class="fail"><%=fail %></h3>
		<%} %>
    <form class="form" action="deposit" method="post">
        
        <h1 class="h1">Deposit Here</h1>
        <div class="input">
            <label>Enter your amount</label>
            <br>
            <input type="text" class="input1" name="amount" placeholder="Enter Amount" required>
            <br><br>


            <label>Enter your account Number</label>
            <br>
            <input type="text" class="input1" name="accno" placeholder="Enter AccountNumber" required>
            <br><br>

            <label>Enter your pin</label>
            <br>
            <input type="password" class="input1" name="pin" placeholder="Enter Pin" required>
            </div>
            <br>
             <input type="submit" value="deposit" class="btn btn-primary">
      		 <a href="dashboard.jsp" class="btn btn-primary">Back</a>  
    </form>
</body>
</html>