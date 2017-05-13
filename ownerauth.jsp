<title>Authentication Page</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
	String name = request.getParameter("userid");
	String pass = request.getParameter("pass");
	String cname = request.getParameter("cname");
	application.setAttribute("ownercloud",cname);
	application.setAttribute("ocl",cname);
	try {
		application.setAttribute("onname", name);

		String sql = "SELECT * FROM charm_owner where name='" + name
				+ "' and pass='" + pass + "' and cloudname='" + cname
				+ "'";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		String utype = "";
		if (rs.next()) {
			int i = rs.getInt(1);

			response.sendRedirect("DataOwnerMain.jsp");

		} else {

			response.sendRedirect("wronglogin.html");
		}
		%>

<%
	} catch (Exception e) {
		out.print(e);
		e.printStackTrace();
	}
%>

