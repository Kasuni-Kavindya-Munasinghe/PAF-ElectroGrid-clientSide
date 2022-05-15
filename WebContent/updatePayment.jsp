<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="model.PaymentService" %>
	<!DOCTYPE html>
		<html>
			<head>
				<link rel="stylesheet" href="Views/bootstrap.min.css">
				<script src="Components/jquery-3.2.1.min.js"></script>
				<script src="Components/main.js"></script>
				<meta charset="ISO-8859-1">
				<title>Insert title here</title>
			</head>
		<body>



			<%
				//Update user data----------------------------------
					if (request.getParameter("payment_id") != null)
					{
						PaymentService userObj = new PaymentService();
							String stsMsg = userObj.EditUserDetails(request.getParameter("payment_id"),

							request.getParameter("card_type"),
							request.getParameter("Name"),
							request.getParameter("cardNo"),
							request.getParameter("exp_date"),
							request.getParameter("cvc"),
							request.getParameter("monthly_amount"));
							session.setAttribute("statusMsg", stsMsg);
					}
			%>

		<!DOCTYPE html>
			<html>
				<head>
					<meta charset="ISO-8859-1">
					<title>Register User</title>
					</head>

					<body>

					<h1> Update Payment Details</h1>

					<form method="post" action="updatePayment.jsp">
					
					Payment ID: <input name="payment_id" type="text" class="form-control form-control-sm"> <br>
					Name: <input name="Name" type="text" class="form-control form-control-sm"> <br>
					Contact Number: <input name="contact_no" type="text" class="form-control form-control-sm"> <br>
					Expire date: <input name="exp_date" type="text" class="form-control form-control-sm">  <br>
					CVC: <input name="cvc" type="text" class="form-control form-control-sm">    <br>
					monthly_amount: <input name="monthly_amount" type="text" class="form-control form-control-sm"> <br>
					
					
					<input name="btnsubmit" type="submit" value="update" class="btn btn-primary">
				</form>



		<%
			out.print(session.getAttribute("statusMsg"));
		%>
			<br>
			
		<%
						PaymentService userObj = new PaymentService();
						out.print(userObj.readUserDetails());
					%>



</body>
</html>