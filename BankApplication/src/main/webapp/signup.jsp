<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <style>
        body{

            background: url('bankk.jpg') no-repeat;
            background-size: cover;
            font-family: 'Times New Roman', Times, serif;
            color: beige;
            height: 100vh;

        }
        .signup-box{
            width: 400px;
            height:auto;
            margin: 20px;
            padding: 20px;
            background-color:transparent;
            align-items: center;
            box-shadow: inset -5px -5px rgba(0,0,0,0.2);
            border: 1px solid black;
            backdrop-filter: blur(20px);
            border-radius: 3px;
            margin-left: 550px;
            align-items: center;

        }
        .signup-box h1{
            text-align: center;
           
        }
       
        form label{
            display: flex;
            margin-top: 20px;
            font-size: 18px;
            text-align: center; 
        }

        form input{
            width: 70%;
            padding: 7px;
            border: none;
            border: 1px solid gray;
            border-radius: 20px;
        }
        
        form ,.select{
            width: 70%;
        }
        
         .signup-box button{
            align-items: center;
            width: 30%;
            text-transform: uppercase;
            background-color: red;
            color: white;
            border: none;
            outline: none;
            padding: 10px;
            border-radius: 20px;
            margin-left: 80px;
        }
        .check{
            position:relative;
            left: -130px;
            margin-top: 10px;
           

        }

        .terms{
            position: relative;
            left: 30px;
            top: -40px;
        }

        a{
            color: white;
        }
    </style>
</head>
<body>
    <form action="Signup" class="signup-box" method="post">
    
            <h1>Signup</h1>
            <%String success=(String)request.getAttribute("success");
		if(success!=null) { %>
		<h3 class="success"> <%=success %></h3>
		<%} %>
		
		<%String fail=(String)request.getAttribute("fail");
		if(fail!=null) { %>
		<h3 class="fail"><%=fail %></h3>
		<%} %>
		
		<%String mismatch=(String)request.getAttribute("mismatch");
		if(mismatch!=null) { %>
		<h3 class="fail"><%=mismatch %></h3>
		<%} %>
            <label>Enter your name</label>
            <input type="text" name="name" placeholder="Enter Username" required>

             
            <label>Enter your Phone</label>
            <input type="text" name="phone" placeholder="Enter phone number" required>
           
            <label>Enter your Email</label>
            <input type="text" name="mail" placeholder="Enter email" required>
           


           
            <!-- <input type="text" name="branch" placeholder="Enter Branch" required> -->

            

            <label>Enter your password</label>
            <input type="password" name="pin" placeholder="Enter password" required>

             <label>confirm your password</label>
             <input type="password" name="confirm" placeholder="confirm password" required>
                
             <input type="checkbox" class="check"><label class="terms">Accept the terms and Condition</label>
             
             <button type="submit">SignUP</button> 
             
             <p>Already have account <a href="login.jsp"title="click here" target="_blank">Login </a></p>
             
           

            </form>
      
        
</body>
</html>