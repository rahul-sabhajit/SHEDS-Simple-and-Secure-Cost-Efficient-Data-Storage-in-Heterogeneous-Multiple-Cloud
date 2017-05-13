<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SHEDS:A Simple and Secure Cost Efficient Data Storage in Heterogeneous Multiple Cloud </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript"
	src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #FF6666
}

.style2 {
	color: #0000FF
}

.style3 {
	color: #00FF00
}
-->
</style>
</head>
<body>
<div class="main">
<div class="header">
<div class="header_resize">
<div class="logo">
<h1><a href="index.html">SHEDS</span> <small>Multi-cloud Data
 Hosting and cost adapting Scheme with High convenience</small></a></h1>
</div>
<div class="clr"></div>
<div class="menu_nav">
<ul>
	<li><a href="index.html"><span>Home Page</span></a></li>
	<li class="active"><a href="DataOwner.html"><span>Data
	Owner </span></a></li>
	<li><a href="ProxyServer.html"><span>Proxy Server</span></a></li>
	<li><a href="CloudServer.html"><span>CloudServer</span></a></li>
	<li><a href="EndUser.html"><span>EndUser</span></a></li>
</ul>
</div>
<div class="clr"></div>
<div class="slider">
<div id="coin-slider"><a href="#"><img src="images/slide1.jpg"
	width="960" height="313" alt="" /> </a> <a href="#"><img
	src="images/slide2.jpg" width="960" height="313" alt="" /> </a> <a
	href="#"><img src="images/slide3.jpg" width="960" height="313"
	alt="" /> </a></div>
<div class="clr"></div>
</div>
<div class="clr"></div>
</div>
</div>
<div class="content">
<div class="content_resize">
<div class="mainbar">
<div class="article">
<h2 class="style1">Welcome To Migration :: <%=application.getAttribute("onname") %>
</h2>
<p class="infopost"><span class="style3">Owner </span>&nbsp;&nbsp;|&nbsp;&nbsp;<span
	class="style2">Control Panel </span></p>
<div class="clr"></div>
<div class="img"></div>
<div>
<form action="performMig.jsp" method="post">
<table width="598" border="1" align="center">

	<tr>
		<td width="286"><span class="style4">Provide Ur Email id:-
		</span></td>
		<td width="356"><input name="email" type="text" id="t42"
			size="50" /></td>
	</tr>
	<tr>
		<td width="286"><span class="style4">Provide Ur Reg UserName:-
		</span></td>
		<td width="356"><input name="name" type="text" id="t42"
			size="50" /></td>
	</tr>

	<tr>
		<td><span class="style4">Migrating From :- </span></td>
		<td><select id="s1" name="cloud" style="width: 22 5px;"
			class="text">
			<option><%=application.getAttribute("ocl") %></option>


		</select></td>
	</tr>
	<tr>
		<td><label for="cloud">Migration to :- </label></td>
		<td><select id="s1" name="mcloud" style="width: 22 5px;"
			class="text">
			<option>--Select Cloud Server--</option>
			<option>Rackspace</option>
			<option>Amazon S3</option>
			<option>Windows Azure</option>
			<option>Aliyun OSS</option>
		</select></td>
	</tr>

	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>
		<div align="right"></div>
		</td>
		<td><input type="submit" name="Submit2" value="Migrate" /></td>
	</tr>
</table>



</form>
</div>
<div class="clr"></div>
</div>
</div>
<div class="sidebar">
<div class="searchform">
<form id="formsearch" name="formsearch" method="post" action="#">
<span> <input name="editbox_search" class="editbox_search"
	id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
</span> <input name="button_search" src="images/search.gif"
	class="button_search" type="image" /></form>
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
	<li><a href="http://www.dreamtemplate.com/">Pricing Models of
	Mainstream Clouds</a><br />
	</li>
	<li><a href="http://www.templatesold.com/">Erasure coding</a></li>
	<li><a href="http://www.imhosted.com/">Combining Replication
	and Erasure Coding</a><br />
	</li>
	<li><a href="http://www.megastockphotos.com/">Comparison of
	Data Hosting Modes</a><br />
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
<a href="#"><img src="images/gal1.jpg" width="75" height="75" alt=""
	class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75"
	height="75" alt="" class="gal" /></a> <a href="#"><img
	src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a
	href="#"><img src="images/gal4.jpg" width="75" height="75" alt=""
	class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75"
	height="75" alt="" class="gal" /></a> <a href="#"><img
	src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a></div>
<div class="col c2">
<h2><span>Multi-cloud data hosting</span></h2>
<p align="justify">Multi-cloud data hosting received wide ttention
from researchers, customers, and . The basic principle of multi-cloud
(data hosting) is distribute data across multiple clouds to gain
enhanced redundancy and prevent the vendor lock-in risk, as shownThe
potential prevalence of multi-cloud is illustrated in three<br />
folds. First, there have been a few researches conducted on multi-cloud.
DepSky guarantees data availability and security on multiple clouds.</p>
</div>
<div class="col c3">
<h2><span>Vendor lock-in risk</span></h2>
<p>Facing numerous cloud vendors as well as their heterogenous
performances/policies, customers may be perplexed with which cloud(s)
are suitable for storing their data and what hosting strategy is
cheaper.</p>
<p>The general status quo is that customers usually put their data
into a single cloud and then simply trust to luck.</p>
</div>
<div class="clr"></div>
</div>
</div>
<div class="footer">
<div class="footer_resize">
<p class="lf"></p>
<p class="rf"></p>
<div style="clear: both;"></div>
</div>
</div>
</div>
<div align=center></div>
</body>
</html>
