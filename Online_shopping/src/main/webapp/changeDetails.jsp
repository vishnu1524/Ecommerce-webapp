<%@page import="com.mysql.cj.xdevapi.SchemaImpl"%>
<%@page import="com.demo.cnn.Connection_Provider"%>
<%@page import="java.sql.*" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body>
<%
try{
	Connection_Provider conProvider =new Connection_Provider();
	Connection con=conProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from user where email");
	while(rs.next()){
%>
<h3>Name: <%=rs.getString(1) %></h3>
<hr>
 <h3>Email: <%=rs.getString(2) %></h3>
 <hr>
 <h3>Mobile Number: <%=rs.getString(3) %></h3>
 <hr>
<h3>Security Question: <%=rs.getString(4) %></h3>
<hr>
      <br>
      <br>
      <br>
<%
}
}catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>