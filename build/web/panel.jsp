<%-- 
    Document   : index
    Created on : 15 Dec, 2014, 8:28:24 AM
    Author     : arindam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Welocome: Modern Path </title>
        <link type="text/css" rel="stylesheet" href="main.css"/> 
        <link type="text/css" rel="stylesheet" href="regform.css"/>      
        <script lang="en" type="text/javascript" src="jquary.js"></script>
        <script lang="en" type="text/javascript" src="panelContentloader.js"></script>
        <link type="text/css" rel="stylesheet" href="menu.css"/>
        <script type="text/javascript">
            ( function( $ ) {
$( document ).ready(function() {
$('#cssmenu > ul > li > a').click(function() {
  $('#cssmenu li').removeClass('active');
  $(this).closest('li').addClass('active');	
  var checkElement = $(this).next();
  if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
    $(this).closest('li').removeClass('active');
    checkElement.slideUp('normal');
  }
  if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
    $('#cssmenu ul ul:visible').slideUp('normal');
    checkElement.slideDown('normal');
  }
  if($(this).closest('li').find('ul').children().length == 0) {
    return true;
  } else {
    return false;	
  }		
});
});
} )( jQuery );
        </script>      
      
    </head>
    <body> 
        <div id="bigwrapper">
            <header id="header">
                <div id="logo"><img src="img/logo.jpg" alt="logo" width="240px;" height="80px;"/></div>
                <div id="banner">The Modern Pathology </div>
            </header>  
            <section>
                <nav>
                    <div id='cssmenu'>
<ul>
   <li class='active'><a href='panel.jsp'><span>Deshboard</span></a></li>
   <li class='has-sub'><a href='#'><span>Patient</span></a>
      <ul>
          <li id="btnreg"><a href='#'><span>Registration</span></a></li>
         <li><a href='#'><span>Search</span></a></li>
         <li class='last'><a href='#'><span>contact patient</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='#'><span>About</span></a>
      <ul>
         <li><a href='#'><span>Company</span></a></li>
         <li class='last'><a href='#'><span>Contact</span></a></li>
      </ul>
   </li>
   <li class='last' id="btn"><a href='#'><span>Contact</span></a></li>
</ul>
</div>
                    
                </nav>
                <div id="content"></div>                
            </section>
            <footer>ipath@ 2014</footer>
        
        </div>
       
        </div>
    </body>
</html>
