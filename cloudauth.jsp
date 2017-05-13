<title>Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String name=request.getParameter("userid");      
   	String pass=request.getParameter("pass");
   	String clname=request.getParameter("cname");
    try{
			application.setAttribute("cloudName",clname);
			%>
			<h2><%=clname  %></h2>
			<%
			
			session.setAttribute("cnames",clname);
			String sql="SELECT * FROM charm_cloud where username='"+name+"' and password='"+pass+"' and cname='"+clname+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			String utype="";
			if(rs.next()){
				
				if(clname.equalsIgnoreCase("Rackspace")){
				application.setAttribute("cnames1",clname);
			
					response.sendRedirect("CloudServerMain.jsp");
				}else if(clname.equalsIgnoreCase("Amazon S3")){
					application.setAttribute("cnames2",clname);
					response.sendRedirect("CloudServerMain.jsp");
				}else if(clname.equalsIgnoreCase("Windows Azure")){
					application.setAttribute("cnames3",clname);
					response.sendRedirect("CloudServerMain.jsp");
				}else if(clname.equalsIgnoreCase("Aliyun OSS")){
					application.setAttribute("cnames4",clname);
					response.sendRedirect("CloudServerMain.jsp");
				}
				response.sendRedirect("CloudServerMain.jsp");
				%>
				<form action="CloudServerMain.jsp" method="post" id="clouddet">
				<input id="cname" name="cname" width="300" type="text" value="<%=clname %>" />
				</form>
				<%
			}
			else
			{
			response.sendRedirect("wronglogin.html");
			}
		
	}
	catch(Exception e)
	{
		out.print(e.getMessage());
		e.printStackTrace();
	}
%>