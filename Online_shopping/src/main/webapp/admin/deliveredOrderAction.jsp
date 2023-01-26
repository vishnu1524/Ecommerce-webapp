<%@page import="com.demo.cnn.Connection_Provider"%>
<%@page import="java.sql.*" %>
<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="Delivered";
try{
	Connection_Provider conProvider =new Connection_Provider();
	Connection con=conProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");
	response.sendRedirect("orderReceived.jsp?msg=delivered");
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("orderReceived.jsp?msg=wrong");
}
%>