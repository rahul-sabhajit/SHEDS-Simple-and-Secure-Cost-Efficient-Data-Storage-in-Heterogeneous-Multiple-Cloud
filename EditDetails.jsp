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

<%@page import="java.sql.Statement"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SHEDS:A Simple and Secure Cost Efficient Data Storage in Heterogeneous Multiple Cloud </title>
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
.style1 {color: #0000FF}
.style2 {color: #00FF00}
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
      <div class="mainbar">
        <div class="article">
          <p class="infopost"><span class="style3 style2">Resources  </span>&nbsp;&nbsp;|<span class="style1">&nbsp;&nbsp;Details</span></p>
            <div class="clr"></div>
            <br />
            <br />
        <%
    	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
    	int i=0,j=0,k=0;
    	try{
        	String cname=request.getParameter("cloudn");
       	String vm=request.getParameter("vmm");
       	%>
       	<h2><%=cname %></h2>
       	<%
       	String tbl="";
  		if (cname.equalsIgnoreCase("Rackspace")) {
  			tbl = "charm_rvmcost";
  		} else if (cname.equalsIgnoreCase("Amazon S3")) {
  			tbl = "charm_avmcost";
  		} else if (cname.equalsIgnoreCase("Windows Azure")) {
  			tbl = "charm_wvmcost";
  		} else if (cname.equalsIgnoreCase("Aliyun OSS")) {
  			tbl = "charm_aovmcost";
  		} 
       	
       	Statement st=connection.createStatement();
       	
       	String query="select * from "+tbl+" where cname='"+cname+"' and memory='"+vm+"'";
       	
       	ResultSet rs=st.executeQuery(query);
       	while(rs.next())
       	{
       		i=rs.getInt(1);
    		s2=rs.getString(2);
    		s3=rs.getString(3);
    		s4=rs.getString(4);
    		
       	}
       	if(vm.equalsIgnoreCase(s2)&&cname.equalsIgnoreCase(s4)){
       		application.setAttribute("id",i);
       		%>
       		<form action="Alter.jsp" method="post">
<table width="598" border="1" align="center">

	<tr>
		<td width="286"><span class="style4">VM Memory :- </span></td>
		<td width="356"><input name="t42" type="text" id="t42" size="50"
			value="<%= vm%>" readonly="readonly" /></td>
	</tr>
	
	<tr>
		<td><span class="style4">Cost:- </span></td>
		<td><input name="t4" type="text" id="t4" size="50"
			value="<%= s3 %>" /></td>
	</tr>
	<tr>
			  <td>
			   <label for="cloud">Select Cloud Server :- </label>
			  </td>
			  <td>
                   <select id="s1" name="cloud" style="width:225px;" class="text">
			     <option><%=cname %></option>
                  
			  
			  </select>
			  </td>
			  </tr><tr>  <td>
			   <label for="cloud">Operation :- </label>
			  </td> <td>
                   <select id="s1" name="oper" style="width:225px;" class="text">
			     <option>Update</option>
                 <option>Delete</option> 
			  
			  </select>
			  </td>
			  </tr>
	
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>
		<div align="right"></div>
		</td>
		<td><input type="submit" name="Submit2" value="Perform" /></td>
	</tr>
</table>
</form>
       		<%
       	}else{
       		%>
       		<h1>The Memory U choosen is not Available </h1>
       		<%
       	}
    	}catch(Exception e){
    		e.printStackTrace();
    		out.print(e.getMessage());
    	}
        %>
        
           
          <div class="img"></div>
          <div>
            
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
           <h2 class="star"><span>Cloud Menu</span></h2>
           <div class="clr"></div>
         <ul class="sb_menu">
            <li><a href="GetThreshold.jsp">Threshold</a></li>
            <li><a href="GetVMR.jsp">VM Resources</a></li>
            <li><a href="ViewMigrateDetails.jsp">Migrate Cloud</a></li>
            <li><a href="ViewDataOwners.jsp">View DataOwners</a></li>
            <li><a href="ViewCloudFiles.jsp">View All Files</a></li>
  			<li><a href="MemoryUtil.jsp">View Memory Utillization</a></li>
  			<li><a href="ViewAttackers.jsp">View All Attackers</a></li>
  			<li><a href="UnblockUser.jsp">Revoke Vendor</a></li>
            <li><a href="index.html">Log Out</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star"><span>SHEDS Menu </span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="#">Pricing Models of Mainstream Clouds</a><br />
            </li>
            <li><a href="#">Erasure coding</a></li>
            <li><a href="#">Combining Replication and Erasure Coding</a><br />
            </li>
            <li><a href="#">Comparison of Data Hosting Modes</a><br />
            </li>
           
          </ul>
        </div>
      </div>
      <div class="clr"></div>
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
