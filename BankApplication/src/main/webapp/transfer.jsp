<%@page import="com.bank.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transfer</title>
    <style>

        body{
            background-color: grey;
        }
        .form{
            position: absolute;
            margin-top: 120px;
           
            margin-left: 550px;
            padding:50px;
            background-color: white;
           border: 2px solid #8f8c8f;
            box-shadow: 0px 0px 25px #8f8c8f ;
            border-radius: 25px;
            font-weight: bolder;
        }
        .input{
            padding: 30px;
           border-color: black;
        }

        .h1{
        	text-transform:uppercase;
            margin-left:20px;
            margin-top: 30px;
            position: relative;
            /* left:20px; */

        }
        .btn{
            text-decoration: none;
            color: white;
             border:none;
            box-shadow: 0px 5px 15px #d1cdd1;
            background-color: #c55ad1;
            padding: 5px;
            width: 30%;
            height: 30px;
            position: relative;
            left:70px;
             font-weight:bold;
             text-transform:capitalize;
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

<%String success=(String)request.getAttribute("success");
		if(success!=null) { %>
		<h3 class="success"> <%=success %></h3>
		<%} %>
		
<%String transfer=(String)request.getAttribute("transfer");
		if(transfer!=null) { %>
		<h3 class="success"> <%=transfer %></h3>
		<%} %>
		

		
		<%String fail=(String)request.getAttribute("fail");
		if(fail!=null) { %>
		<h3 class="fail"><%=fail %></h3>
		<%} %>
    <form class="form" action="transfer" method="post">
    <%Customer c=(Customer)session.getAttribute("customer");%>
             <h1 class="h1">Transfer Amount</h1>
       
        <div class="input">
             <label>Enter receiver account Number</label>
            <br>
            <input type="text" class="input1" name="receiver" placeholder="Enter AccountNumber" required>
            <br><br>


            <label>Enter amount to deposit </label>
            <br>
            <input type="text" class="input1" name="amount" placeholder="Enter amount to deposit" required>
            <br><br>
             <label>Enter  account Number</label>
            <br>
            <input type="text" class="input1" name="accno" placeholder="Enter AccountNumber" required>
            <br><br>
            
            <label>Enter your  pin</label>
            <br>
            
            <input type="text" class="input1" name="pin" placeholder="Enter Pin" required>
            </div>
             <input type="submit" value="transfer" class="btn btn-primary">
      		 <a href="dashboard.jsp" class="btn btn-primary">Back</a>  
    </form>
</body>
</html>