<%@page import="com.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css\footer.css"> 
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/payment.js"></script>

		<nav class="navbar navbar-expand-md navbar-dark" style="background-color:#4D4D4D">
			 <ul class="navbar-nav">
                        <li><a href="#" class="nav-link">ElecroGrid Online Platform</a></li>
                    </ul>
                </nav>
</head>
<body style="background-color:	#E7E8E3;">

<div class="container"><div class="row"><div class="col-6">
<h1>Payment Management</h1>
<form id="formPayment" name="formPayment">
 Card type:
 <input id="name" name="name" type="text"
 class="form-control form-control-sm">
 <br> Name:
 <input id="address" name="address" type="text"
 class="form-control form-control-sm">
 <br> Card No:
 <input id="email" name="email" type="text"
 class="form-control form-control-sm">
 <br> Expire date:
 <input id="contact_no" name="contact_no" type="text"
 class="form-control form-control-sm">
 <br> CVC:
 <input id="username" name="username" type="text"
 class="form-control form-control-sm">
 <br> Monthly amount:
 <input id="password" name="password" type="text"
 class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Submit"
 class="btn btn-primary">
 <input type="hidden" id="hidpayment_idSave"
 name="hidpayment_idSave" value="">
 

</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divPaymentsGrid">
 <%
 Payment PaymentObj = new Payment();
 out.print(PaymentObj.readPayments());
 %>
 
</div>
</div> </div> </div>
<br><br>


</body>
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