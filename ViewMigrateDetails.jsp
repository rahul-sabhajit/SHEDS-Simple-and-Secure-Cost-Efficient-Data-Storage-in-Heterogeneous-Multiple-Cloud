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



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SHEDS: A Simple and Secure Cost Efficient Data Storage in Heterogeneous Multiple Cloud </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {color: #3366FF}
.style4 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
   <h1><a href="index.html">SHEDS</span> <small>A Simple and Secure Cost Efficient Data Storage in Heterogeneous Multiple Cloud </small></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="DataOwner.html"><span>Data Owner </span></a></li>
          <li><a href="ProxyServer.html"><span>Proxy Server</span></a></li>
          <li class="active"><a href="CloudServer.html"><span>CloudServer</span></a></li>
          <li><a href="EndUser.html"><span>EndUser</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="313" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="313" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="313" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
   
        <div class="article">
<p>&nbsp;</p>
      <h2 align="center">Migration Details</h2>
           <table width="965" border="1" align="center">
  <tr>
  
      <td width="293"><div align="center"><span class="style3">Owner Name </span></div></td>    
       <td width="140" height="32"><div align="center"><span class="style3">File Name </span></div></td> 
       <td width="293"><div align="center"><span class="style3"> Old Cloud Name </span></div></td>
      <td width="293"><div align="center"><span class="style3">New Migrated Cloud Name</span></div></td>
    <td width="115"><div align="center"><span class="style3">Registered Name in Mig Cloud </span></div></td>
      <td width="293"><div align="center"><span class="style3">Email </span></div></td>
    <td width="115"><div align="center"><span class="style3">Date </span></div></td>
  </tr>
          
          
          <%
            String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
	String cl=(String) application.getAttribute("ocl");

      	try 
	{
        
          
      		 
      		
      		String query="select * from charm_mig where cloudname='"+cl+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
           while ( rs.next() )
	   {    
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
	

		%>

<tr>
	<td height="29">
	<div align="center"><%=s2%></div>
	</td>
		<td>
	<div align="center"><%=s3%></div>
	</td>
	<td>
	<div align="center"><%=s4%></div>
	</td>
	<td>
	<div align="center"><%=s5%></div>
	</td>
	<td>
	<div align="center"><%=s6%></div>
	</td>
	<td>
	<div align="center"><%=s7%></div>
	</td>
	<td>
	<div align="center"><%=s8%></div>
	</td>

</tr>


<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
            e.printStackTrace();
          }
%>
</table>
          </p>
   


<h4><a href="CloudServerMain.jsp">back</a></h4>
      </div>
    </div>
      
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Multi-cloud data hosting</span></h2>
        <p align="justify">Multi-cloud data hosting received wide ttention from researchers, customers, and . The basic principle of multi-cloud (data hosting) is distribute data across multiple clouds to gain enhanced redundancy and prevent the vendor lock-in risk, as shownThe potential prevalence of multi-cloud is illustrated in three<br />
          folds. First, there have been a few researches conducted on multi-cloud. DepSky guarantees data availability and security  on multiple clouds.</p>
      </div>
      <div class="col c3">
        <h2><span>Vendor lock-in risk</span></h2>
        <p>Facing numerous cloud vendors as well 
          as their heterogenous performances/policies, customers may 
          be perplexed with which cloud(s) are suitable for storing their 
        data and what hosting strategy is cheaper.</p>
        <p>The general status
          quo is that customers usually put their data into a single cloud 
        and then simply trust to luck.</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div></body>
</html>
