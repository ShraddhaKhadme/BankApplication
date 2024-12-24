<%@page import="java.util.Iterator"%>
<%@page import="com.bank.dto.Transaction"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bank.dao.TransactionDAOImpl"%>
<%@page import="com.bank.dao.TransactionDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View  Account</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style>

.tabl{
	margin-left:260px;
}
.tabl h3{
	text-align:center;
	margin:10px;
}
.tab{
	margin-top:100px;
	margin-left:350px;
	
}
.tab th{
	padding:10px 30px;
	background-color:wheat;
	padding-bottom:20px;
	
}
.tab td{
	padding:10px 30px;
	padding-bottom:20px;
	background-color:silver;
}
.view{
	
	margin-top:30px;
	margin-left:400px;
}

.btnn a{
	margin-top:30px;
	margin-left:180px;
}

.success{
        	margin-top:20px;
        	text-align:center;
        	color:green;
        }
        .fail{
        	text-align:center;
        	margin-top:20px;
        	color:red;
        }
       .btnn{
       float:right;
       background-color: #c55ad1;
       }
        
</style>
</head>
<body>
<%@include file="admin.jsp" %>
<div class="tabl">
<h3>view  this account..?</h3>

<%String view=(String)request.getAttribute("view"); 
	if(view!=null) {%>
	<h4 class="success"><%=view %></h4>
	<%}%>
	
	<%String fail=(String)request.getAttribute("fail");
	if(fail!=null) {%>
	<h4 class="fail"><%=fail %></h4>
	<%}%>
<table class="tab">
  <thead>
    <tr>
      <th>Account Number:</th>
      <td><%=c.getAccno() %></td>
    </tr>
    <tr>
      <th scope="col">Account Holder Name:</th>
      <td><%=c.getName() %></td>
    </tr>
    <tr>
      <th scope="col">Phone Number:</th>
      <td><%=c.getPhone() %></td>
    </tr>
    <tr>
      <th scope="col">Mail Id:</th>
      <td><%=c.getMail() %></td>
    </tr>
    <tr>
      <th scope="col">Account Type:</th>
      <td>Savings Account</td>
    </tr>
    <tr>
      <th scope="col">Your Balance:</th>
      <td><%=c.getBal() %></td>
    </tr>
  </thead>
</table>


<div class="trans">
        <h3>Transaction Details</h3>
       
      <table class="table">
        
        <thead>
       <th><% int count=1;%></th>
       <th>TRAN_ID</th>
       <th>USER_ACC</th>
       <th>REC_ACC</th>
       <th>TRAN_DATE</th>
       <th>AMOUNT</th>
       <th>BALANCE</th>
       <th>TRAN_TYPE</th>
        </thead>
        <tbody>
         <%TransactionDAO tdao=new TransactionDAOImpl();
        ArrayList <Transaction> list=(ArrayList <Transaction>)tdao.getTransaction(c.getAccno());
        Iterator<Transaction> it=(list.iterator());
        %>
        <%while(it.hasNext()) {
        Transaction t=it.next();%>
       
        
          <tr class="table-active">
            <td><%=count++ %></td>
           <td><%=t.getTransactionId() %></td>
					<td><%=t.getUser() %></td>
					<td><%=t.getRec_acc() %></td>
					<td><%=t.getDate() %></td>
					<td><%=t.getAmount() %></td>
					<td><%=t.getBalance() %></td>
					<td><%=t.getTransaction() %></td>
          </tr>
       
        <%} %>
          
        
        </tbody>
      </table>
	<a href="admindashboard.jsp" class="btn btn-primary btnn">Back</a>
</div>
</body>
</html>