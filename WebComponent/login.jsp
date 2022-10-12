<%@ page import="java.util.*"%>
<%@ page import= "main.resources.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
    User auth = (User) request.getSession().getAttribute("auth");
    if(auth != null) {
    	response.sendRedirect("index.jsp");
    }
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if(cart_list !=null) {
    	request.setAttribute("cart_list", cart_list);
    }
    %>
<!DOCTYPE html>
<html>
<head>
<title>CHIShop</title>
<%@include file="includes/head.jsp"%>
</head>
<body>
<%@include file="includes/navbar.jsp" %>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
		<div class="card-header text-center">Date de conectare</div>
			<div class="card-body">
				<form action="user-login" method="post">
					<div class="form-group">
						<label>Adresa de e-mail</label> <input type="email"
							class="form-control" name="login-email"
							placeholder="Introduceti adresa de e-mail" required>
					</div>
					<div class="form-group">
						<label>Parola</label> <input type="password" class="form-control"
							name="login-password" placeholder="**********" required>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Continua</button>
					</div>
					<div class="text-center">
						<a href="change-password" class="link-primary">Am uitat parola</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>