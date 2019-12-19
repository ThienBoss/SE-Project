<%-- 
    Document   : home
    Created on : Sep 24, 2019, 11:57:44 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Book" %>
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
		               <i class='fas fa-book-open' style="color: white; font-size: 40px;"><a id="title" href="bookstore_home.jsp" style="font-family: Impact; color: whitesmoke;text-decoration: none;font-size: 40px; "> BookForYou </a></i>
		        </div>
		        <div class="services">
	                     <a id="option" href="login_signin.jsp"><i id ="option" class='far fa-grin-squint'> Log in/Join us | </i></a>
	                     <a id="option" href="helppage.jsp"><i id ="option" class='far fa-question-circle'> Help | </i></a>
	                     <a id="option" href="contact.jsp"><i id ="option" class='fas fa-comment-alt'> Contact us </i></a>
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
			          <form action="Search.jsp">
			              <input name="search" type="text"  placeholder="Search your books here." name="search">
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
		             <li><a href="Art_Photography.jsp">Art, Photography</a></li>
		             <li><a href="bestSeller.jsp">Best seller</a></li>
		             <li><a href="best2019.jsp">Best in 2019</a></li>
		             <li><a href="forChildren.jsp">Children books</a></li>
		             <li><a href="Life-style_Self-help.jsp">Life-style/Self-help</a></li>
		             <li><a href="Novels.jsp">Novels</a></li>
		             <li><a href="Study.jsp">Study</a></li>
		           </ul>
		        </li>
		        <li class="bestSellingblock"><a class="bestSelling_link" href="bestSeller.jsp"><b>Bestsellers | </b></a></li>
		        <li class="newReleaseblock"><a class="newRelease_link" href="newRelease.jsp"><b>New Releases | </b></a></li>
		      </ul>
		      
		      <ul class="leftPart">
		           <li class="wishlist_link"><a href="login_signin.jsp"><b>Wishlist | </b></a></li>
		           <li class="cart_link"><a href="login_signin.jsp"><i class="fa fa-shopping-cart"></i><b>Cart |</b></a></li>
		       </ul>
		     </div>
		     
		    </div>
		    </div>
        </div>
    
      <div class="bookPageBody">
        <div class="sidebar">
            <div class="block">
            	  <img src="http://www.milwaukeeafwa.org/_/rsrc/1570026699823/book-sale/Book%20Sale%20Image.jpg" >
            </div>
              
            <div class="block">
                  <h3 style="text-align:center">Best Sell Book Categories</h3>
		          <div class="inside"><a href="Study.jsp" style="padding-right: 8em">Study</a></div>
		          <div class="inside"><a href="Novels.jsp" style="padding-right: 8em">Novels</a></div>
             </div>
         
            <div class="block">
           		  <h3 style="text-align:center">Most Viewed Categories</h3>
		          <div class="inside"><a href="Life-style_Self-help.jsp" style="padding-right: 6em">Life-Style</a></div>
		          <div class="inside"><a href="Art_Photography.jsp" style="padding-right: 10em">Art</a></div>  
           </div>
           
         
            <div class="block">
            	<h3 style="text-align:center">Popular Authors</h3>
		        <div class="haflLeft">
			          <a href="author.jsp">J. K. Rowling</a>
			          <a href="author.jsp">Nora Roberts</a>
		        </div>
		        <div class="haftRight">
			          <a href="author.jsp">Elon Musk</a>
			          <a href="author.jsp">Conan Doyle</a>
		        </div>
          </div>
          
          <div class="block">
            	  <a href="login_signin.jsp"><img src=" https://previews.123rf.com/images/rajanig/rajanig1608/rajanig160800056/64304484-join-us-button-isolated.jpg" style="height:270px;" ></a>
            </div>
            
            <div class="block" style="margin-top:130px;">
            	  <img src="https://www.quotemaster.org/images/f3/f3345ccf1b67380ea06558bb28419758.jpg" style="height:270px;">
            </div>
            
            <div class="block" style="margin-top:130px;">
            	  <img src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/albert-einstein-book-quote-1531932852.jpg" style="height:270px;">
            </div>
        </div>
        
        <div class="mainside">
        <form action="login_signin.jsp">
          <div class="itemMainInfo">
             <div class="mainImg">
                 <input type="image" name="mainImg" src="<%=session.getAttribute("Imaget")%>">
             </div>
             <div class="mainTitle">
                 <p><b><%=session.getAttribute("Btitlet")%></b><br>
                          --------------------------</p>
             </div>
             <div class="mainAuthor">
                 <span><b>Author: </b></span><a href="author_<%=session.getAttribute("Bauthort")%>.jsp"><%=session.getAttribute("Bauthort")%></a>
             </div>
             <div class="mainPrice"> 
               <p> <span><b>Price: </b></span> <%=session.getAttribute("Bpricet")%> VND<br>
                         --------------------------</p>
             </div>
             
             <div class="wishlist_bookPage"> 
               <input type="submit" name="buttonWish" value="Add to wishlist">
             </div>
             <div class="addCart_bookPage"> 
               <a href="login_signin.jsp"><input type="button" name="buttonCart" value="Add to cart"></a>   
             </div>
          </div>
          </form>
          
          <div class="detail">
             <h3>Book detail:</h3>
          </div>
        </div>  
       </div> 
    </body>
</html>