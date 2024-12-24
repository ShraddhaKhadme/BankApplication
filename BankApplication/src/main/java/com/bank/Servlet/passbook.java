//package com.bank.Servlet;
//
//import java.io.IOException;
//
//import com.bank.dao.TransactionDAO;
//import com.bank.dao.TransactionDAOImpl;
//import com.bank.dto.Transaction;
//
//import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//@WebServlet("/passbook")
//public class passbook extends HttpServlet {
//@Override
//protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//	HttpSession session=req.getSession();
//	
//	String userr=req.getParameter("user");
//	;
//	long user=Long.parseLong(userr);
//	TransactionDAO tdao=new TransactionDAOImpl();
//	boolean t=tdao.getTransaction(long Tran_Id);
//	if(t!=null)
//	{
//		session.setAttribute("transaction",t);
//		RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
//		rd.forward(req, resp);
//
//	}
//	else
//	{
//		req.setAttribute("fail","invalid email or password");
//		RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
//		rd.forward(req, resp);
//	}
//}
//}
