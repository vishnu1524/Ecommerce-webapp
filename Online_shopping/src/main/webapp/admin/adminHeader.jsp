<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../css/homeStyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<div class="topnav sticky">
   <%
   String email=session.getAttribute("email").toString();
   %>
            <center><h2>Ecommerce Website</h2></center>
            <a href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
            <a href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="messageRecieved.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="orderRecieved.jsp">Orders Received <i class="fas fa-archive"></i></a>
            <a href="cancelOrder.jsp">Cancel Orders <i class='fas fa-window-close'></i></a>
            <a href="deliveredOrder.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
</div>
<br>