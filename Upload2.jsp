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
.style1 {color: #FF6666}
.style2 {color: #0000FF}
.style3 {color: #00FF00}
-->

</style>
   <script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}

</script>
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
          <li class="active"><a href="DataOwner.html"><span>Data Owner </span></a></li>
          <li><a href="ProxyServer.html"><span>Proxy Server</span></a></li>
          <li><a href="CloudServer.html"><span>CloudServer</span></a></li>
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
     <%
String ownerName=(String)application.getAttribute("onname");
String oCName=(String)application.getAttribute("ocl");
%>

<h5 align="right"><%=new java.util.Date()%></h5>
<h2 align="center">Upload Data </h2>

   <%

      	try 
	{
      		String file=request.getParameter("t42");
      		String cont=request.getParameter("text2");
      		String mac =request.getParameter("t4");
      		String cloud=request.getParameter("cloud");
      		
			SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat(
					"HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
      		KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
				Cipher encoder = Cipher.getInstance("RSA");
				KeyPair kp = kg.generateKeyPair();

				Key pubKey = kp.getPublic();

				byte[] pub = pubKey.getEncoded();
//				System.out.println("PUBLIC KEY" + pub);
		
				String pk = String.valueOf(pub);
				String rank="0";
			 Statement st=connection.createStatement();
	
				String user="Data Owner";
				String task="Upload";
				
				String ownernam=(String) application.getAttribute("onname");
				
				String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,s14,s15="",s16,s17="",s18;
				int i=0,j=0,k=0,i12;

	      		String query4="select * from charm_memcons where ownername='"+ownernam+"' and cloudname='"+cloud+"' "; 
	           Statement st4=connection.createStatement();
	           ResultSet rs=st4.executeQuery(query4);
	           //charm_rackspacetresh
	            String tbl="";
	           if (cloud.equalsIgnoreCase("Rackspace")) {
				tbl = "charm_rackspacetresh";
			} else if (cloud.equalsIgnoreCase("Amazon S3")) {
				tbl = "charm_amazons3tresh";
			} else if (cloud.equalsIgnoreCase("Aliyun OSS")) {
				tbl = "charm_aliyunosstresh";
			} else if (cloud.equalsIgnoreCase("Windows Azure")) {
				tbl = "charm_windowsazuretresh";
			} 
	           
	           String query12="select * from "+tbl+" where ownername='"+ownernam+"' and cloudname='"+cloud+"' "; 
	           Statement st12=connection.createStatement();
	           ResultSet rs12=st12.executeQuery(query12);

	           while ( rs.next() )
		   {
			i=rs.getInt(1);
			s2=rs.getString(2);
			s3=rs.getString(3);
			s4=rs.getString(4);
			s5=rs.getString(5);
			s6=rs.getString(6);//
			s7=rs.getString(7);
			while ( rs12.next() )
			   {
				i12=rs12.getInt(1);
				s12=rs12.getString(2);//on
				s13=rs12.getString(3);//cn
				s14=rs12.getString(4);//vm
				s15=rs12.getString(5);//mem
				s16=rs12.getString(6);//cost
				s17=rs12.getString(7);//thre
				s18=rs12.getString(8);//dt
			   }

		   }
	           
	           
	           
	           
	          out.print(s17+" , "+s6 );
	           int rem=Integer.parseInt(s6);
	           
	           int thre=Integer.parseInt(s17);
	           int r=rem-thre;
	           if(rem>thre)
	           {
	        	 
	         
		           int length=cont.length();
	        	 
	        
			  // insert to resource
			 int re=Integer.parseInt(s15);
			  
			  
			  int rm=rem-length;
			  %><h2><%=length %> <%=re %> <%=rm %> ,<%=r %></h2>
			  <%
			    String strQuery = "insert into charm_memcons(ownername,fname,cloudname,vmused,remvm,dt) values('"+ownernam+"','"+file+"','"+oCName+"','"+length+"','"+rm+"','"+dt+"')";
				connection.createStatement().executeUpdate(strQuery);
				
				String strQuery2 = "insert into charm_transaction(user,fname,cname,sk,task,dt) values('"+user+"','"+file+"','"+oCName+"','"+pk+"','"+task+"','"+dt+"')";
				connection.createStatement().executeUpdate(strQuery2);
				
			
			      
			      
			      
				Statement stss=connection.createStatement();
				String status="waiting";
stss.executeUpdate("insert into charm_ownerdetails(fname,ownername,mac,sk,dt) values ('"+file+"','"+ownernam+"','"+mac+"','"+pk+"','"+dt+"')"); 
			
String vm="VM1";
				Statement st2=connection.createStatement();
st2.executeUpdate("insert into  charm_cloudserver(fname,ct,ownername,cname,vm,mac,sk,rank,dt) values ('"+file+"','"+cont+"','"+ownernam+"','"+oCName+"','"+vm+"','"+mac+"','"+pk+"','"+rank+"','"+dt+"')"); 
      //int length=cont.length();
      
Statement st5=connection.createStatement();
st5.executeUpdate("insert into  charm_proxyserver(fname,ownername,cname,vm,mac,sk,mem,dt) values ('"+file+"','"+ownernam+"','"+oCName+"','"+vm+"','"+mac+"','"+pk+"','"+length+"','"+dt+"')"); 
     
	
%>
<p>
<h2>Data Uploaded Successfully !!!</h2>
</p>
<br />
<p><a href="DataOwnerMain.jsp">BACK</a></p>

<%

	        	   }else{
	        		   %>
	        		   <h2>The Upload limit is reached</h2>
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
           <h2 class="star"><span>Owner Menu</span></h2>
           <div class="clr"></div>
                <ul class="sb_menu">
           <li><a href="GetCloudCost.jsp">Find Cost and Memory</a></li>
           <li><a href="PurchaseVm.jsp">Purchase VM</a></li>
            <li><a href="Vmdetails.jsp">My VM Details</a></li>
            <li><a href="Upload.jsp">Upload</a></li>
            <li><a href="Verify.jsp">Verify</a></li>
			<li><a href="Migrate.jsp">Migrate</a></li>
			<li><a href="VReq.jsp">View Request</a></li>
            <li><a href="ViewOwnerDetails.jsp">View Owner Files </a></li>
  
            <li><a href="index.html">Log Out</a></li>

          </ul>
        </div>
        <div class="gadget">
          <h2 class="star"><span>SHEDS Menu </span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="http://www.dreamtemplate.com/">Pricing Models of Mainstream Clouds</a><br />
            </li>
            <li><a href="http://www.templatesold.com/">Erasure coding</a></li>
            <li><a href="http://www.imhosted.com/">Combining Replication and Erasure Coding</a><br />
            </li>
            <li><a href="http://www.megastockphotos.com/">Comparison of Data Hosting Modes</a><br />
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
