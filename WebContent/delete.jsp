
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="model.PaymentService" %>
	<!DOCTYPE html>
		<html>
			<head>
				<link rel="stylesheet" href="Views/bootstrap.min.css">
				<link rel="stylesheet" type="text/css" href="css\footer.css"> 
				<script src="Components/jquery-3.2.1.min.js"></script>
				<script src="Components/main.js"></script>
				<script src="components/jquery-3.2.1.main.js"></script>
				<meta charset="ISO-8859-1">
				<title>Insert title here</title>
				
				<nav class="navbar navbar-expand-md navbar-dark" style="background-color:#4D4D4D">
			 <ul class="navbar-nav">
                        <li><a href="#" class="nav-link">ElecroGrid Online Platform</a></li>
                    </ul>
                </nav>
			</head>
			
			<body >
			<br>
					
						<div class="container"> 
							<div class="row">  
		 						
            					
                					<div class="card">
                   						 <div class="card-body">
                   	
                   	<caption>					 
					<h1>Payment Details</h1>
					</caption>
		<%
			//Delete user----------------------------------
			if (request.getParameter("payment_id") != null)
				{
					PaymentService userObj = new PaymentService();
						String stsMsg = userObj.deleteUser(request.getParameter("payment_id"));
						session.setAttribute("statusMsg", stsMsg);
				}



					PaymentService userObj = new PaymentService();
					out.print(userObj.readUserDetails());
		%>
		<br>
 					</div>
        		</div>
      		</div>
     	 </div>
      
      
		</body style="background-color:	#E7E8E3;">
		<br>
 <!-- Site footer -->
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify"> <i> Munasinghe M.A.K.K IT20059040 </i> This project is based on a company named <b>“ElectroGrid (EG)"</b> who maintains the power grid of the country. They have a system to monitor the power consumption of the users, generate the monthly bills and automatically send to the users, and accept the online payments from the users..</p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Categories</h6>
            <ul class="footer-links">
              <li><a href="createPayment.jsp">Payment Management</a></li>
              <li><a href="createPayment.jsp">Customer Management</a></li>
              <li><a href="createPayment.jsp">Customer Management</a></li>
             
            </ul>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="Index.jsp">HomePage</a></li>
              <li><a href="">Contact Us</a></li>
              <li><a href="">Contribute</a></li>
              <li><a href="">Privacy Policy</a></li>
              
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2022 All Rights Reserved by 
         <a href="https://github.com/Kasuni-Kavindya-Munasinghe/PAF-ElectroGrid--clientSide">Munasinghe M.A.K.K IT20059040</a>.
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>
</html>