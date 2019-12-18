<%-- 
    Document   : home
    Created on : Sep 24, 2019, 11:57:44 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-touchevents flexbox csscolumns csscolumns-width csscolumns-span csscolumns-fill csscolumns-gap csscolumns-rule csscolumns-rulecolor csscolumns-rulestyle csscolumns-rulewidth csscolumns-breakbefore csscolumns-breakafter csscolumns-breakinside smil">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Nhat Huy, Minh Phuc, Hoang Thien">
        <meta name="description" content="The website for rent cars">
        <link rel="stylesheet" type="text/css" href="css\bookbackground.css">
        <link rel="stylesheet" type="text/css" href="css\contact_css.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script type="text/javascript" src="js\clock.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        
        
        <link rel="stylesheet" type="text/css" href="css\preloadPage.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script type="text/javascript" src="js\preLoad.js"></script>
        
        <title>Contact us</title>
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
    
     <div class="body_contact">
        <div class="sidebar_contact">
          <div class="part"><a href="bookstore_home.jsp">Home</a></div>
          <div class="part"><a href="helppage.jsp">FAQ</a></div>
          <div class="part"><a href="term.jsp">Temp/Policy</a></div>
          <div class="part"><a href="login_signin.jsp">Join us now.</a></div>
        </div>
        
        <div class="mainsidecontact">
            <form name="contact" action="#">
                <div class="contact_form">
                <h1>Contact us</h1><br>
                <i style="font-size: 15px; color: grey; margin-left: 30px">In order to contact us. Please fill the form under.</i><br>
                <i style="font-size: 15px; color: grey; margin-left: 30px"><i style="color: red">*</i> means require to answer.</i><br><br>
                <label>Full name <i style="color: red">*</i></label><br>
                <input name="contact_form" type="text" required><br>
                <label>Email <i style="color: red">*</i></label><br>
                <input name="contact_form" type="email" required><br>
                <label>Postcode/zip </label><br>
                <input name="contact_form" type="text"><br>
                <label>Reason <i style="color: red">*</i></label><br>
                <select name="contact_form" required>
                    <option value="chose">--Choose--</option>
                    <option value="My_order">My order</option>
                    <option value="My__pre_order">My pre-order</option>
                    <option value="cancel_order">Cancel my order</option>
                    <option value="damaged_item">Damaged items</option>
                    <option value="incorrect_item">Incorrect items</option>
                    <option value="account">My account</option>
                    <option value="website">Website issues</option>
                    <option value="other">Other</option>
                </select><br>
                <label>More information <i style="color: red">*</i></label><br>
                <textarea name="contactMessage" id="contactMessage" required rows="15"></textarea><br>
                <input name="send_mess" type="submit" value="Send"><br>
                <hr class="style-one">
                <h4>-----Follow us-----</h4><br>
                <a id="icon_fb" href="https://www.facebook.com/"><i class='fab fa-facebook-f'></i></a>
                <a id="icon_ins" href="https://www.instagram.com/"><i class='fab fa-instagram'></i></a>
                <a id="icon_twi" href="https://twitter.com/"><i class='fab fa-twitter'></i></a><br><br>
                </div>
            </form>
            
        </div>
        </div>
        
         
    </body>
</html>
