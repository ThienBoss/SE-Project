<%-- 
    Document   : home
    Created on : Sep 24, 2019, 11:57:44 AM
    Author     : user
--%>
<%@page import="dao.CartDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Customer"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html lang="en" class="no-touchevents flexbox csscolumns csscolumns-width csscolumns-span csscolumns-fill csscolumns-gap csscolumns-rule csscolumns-rulecolor csscolumns-rulestyle csscolumns-rulewidth csscolumns-breakbefore csscolumns-breakafter csscolumns-breakinside smil">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Nhat Huy, Minh Phuc, Hoang Thien">
        <meta name="description" content="The website for rent cars">
        <link rel="stylesheet" type="text/css" href="css\bookbackground.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" type="text/css" href="css\bookPage.css">
        <script type="text/javascript" src="js\clock.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        
        
        <link rel="stylesheet" type="text/css" href="css\preloadPage.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script type="text/javascript" src="js\preLoad.js"></script>
        
        <title><%=session.getAttribute("Btitlet")%></title>
    </head>
    
    
    <body onload="startTime()">
      <div class="se-pre-con"></div>

      <div class="head">
		    <div class="head1">
		      <div class="webName">
		           <i class='fas fa-book-open' style="color: white; font-size: 40px;"><a id="title" href="bookstore_home_user.jsp" style="font-family: Impact; color: whitesmoke;text-decoration: none; "> BookForYou </a></i>
		      </div>
		      
		      <div class="services">
                    <a id="option" href="profile_user.jsp"><i id ="option" class='far fa-grin-squint'> <% Customer cus = (Customer) session.getAttribute("user"); if(cus != null) { out.print(cus.getUserName());} else{response.sendRedirect("bookstore_home.jsp");}%> |  </i></a>
                    <a id="option" href="helppage_user.jsp"><i id ="option" class='far fa-question-circle'> Help |  </i></a>
                    <a id="option" href="contact_user.jsp"><i id ="option" class='fas fa-comment-alt'> Contact us |  </i></a>
                    <a id="option" style="color:white;" href="${pageContext.request.contextPath}/logout_bookstore_servlet?logout=ok">Logout</a>
	           </div>
		    </div>
		    
		    <div class="head2">
			    <div class="topnav">
			        <div class="more_service">
			                  <a href="bookstore_home.jsp"><i class='fas fa-home' style="font-size: 25px; color: white; margin-left:70px;"></i></a>
			                  <a style="font-size: 20px; color: white">|  </a>
			                  <a id="clock" style="font-size: 20px; color: white"></a>
			            </div>
			        <div class="search-container">
			          <form action="Search_user.jsp">
			              <input name="search" type="text" size="60" placeholder="Search your books here.">
			            <button name="submit" type="submit"><i class="fa fa-search"></i></button>
			          </form>
			        </div>
			    </div>
		    </div>
		    
		    <div class="downnav_width">
		    <div class="downnav">
		      <div class="rightPart_downNav">
		      <ul class="rightPart">
		        <li class="categoryDropdown">
		           <a class="categoryName" href="#"><b>Category | </b></a>
		           <ul>
		             <li><a href="Art_Photography_user.jsp">Art, Photography</a></li>
		             <li><a href="bestSeller_user.jsp">Best seller</a></li>
		             <li><a href="best2019_user.jsp">Best in 2019</a></li>
		             <li><a href="forChildren_user.jsp">Children books</a></li>
		             <li><a href="Life-style_Self-help_user.jsp">Life-style/Self-help</a></li>
		             <li><a href="Novels_user.jsp">Novels</a></li>
		             <li><a href="Study_user.jsp">Study</a></li>
		           </ul>
		        </li>
		        <li class="bestSellingblock"><a class="bestSelling_link" href="bestSeller_user.jsp"><b>Bestsellers | </b></a></li>
		        <li class="newReleaseblock"><a class="newRelease_link" href="newRelease_user.jsp"><b>New Releases | </b></a></li>
		      </ul>
		      
		      <ul class="leftPart">
		           <li class="wishlist_link"><a href="wishlist_user.jsp"><b>Wishlist | </b></a></li>
		           <li class="cart_link"><a href="cart_user.jsp"><i class="fa fa-shopping-cart"></i><b>Cart |</b></a></li>
		       </ul>
		     </div>
		    </div>
		    </div>
    </div>
    
      <div class="bookPageBody">
        <div class="sidebar">
          <a href="#about">About</a>
          <a href="#services">Services</a>
          <a href="#clients">Clients</a>
          <a href="#contact">Contact</a>
        </div>
        
        <div class="mainside">
        <form method="get" action="${pageContext.request.contextPath}/Wishlist_servlet">
          <div class="itemMainInfo">
             <div class="mainImg">
                 <input type="hidden" name="BID" value="<%=session.getAttribute("BIDt")%>"> 
                 <input type="hidden" name="UserN" value="<%=cus.getUserName()%>"> 
                 <input type="image" name="mainImg" src="<%=session.getAttribute("Imaget")%>" onClick="autofill();return false;">
             </div>
             <div class="mainTitle">
                 <p><b><%=session.getAttribute("Btitlet")%></b><br>
                           --------------------------</p>
 
             </div>
             <div class="mainAuthor">
                 <span><b>Author: </b></span><a href="author_user.jsp"><%=session.getAttribute("Bauthort")%></a>
             </div>
             <div class="mainPrice"> 
               <p> <span><b>Price: </b></span> <%=session.getAttribute("Bpricet")%> VND<br>
                          --------------------------</p>
             </div>
             
             <div class="wishlist_bookPage"> 
               <input type="submit" name="buttonWish" value="Add to wishlist">
             </div>
             <div class="addCart_bookPage"> 
               <a href="${pageContext.request.contextPath}/Cart_servlet?BID=<%=session.getAttribute("BIDserlet")%>"><input type="button" name="buttonCart" value="Add to cart"></a>   
             </div>
          </div>
          </form>
        </div>  
       </div> 
    </body>
</html>
