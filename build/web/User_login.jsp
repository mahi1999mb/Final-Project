<%-- 
    Document   : Owner_login
    Created on : 7 Jan, 2021, 5:54:54 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

        <title>A Key Policy Based Search</title>

        <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
        <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
        <!-- Waterwheel Carousel -->
        <script type="text/javascript" src="layout/scripts/carousel/jquery.waterwheelCarousel.min.js"></script>
        <script type="text/javascript" src="layout/scripts/carousel/jquery.waterwheelCarousel.setup.js"></script>
        <!-- / Waterwheel Carousel -->
    </head>
      <%
        if (request.getParameter("Failed") != null) {
    %>
    <script>alert('Login failed');</script>
    <%            }
    %>
    <body id="top">
        <div class="wrapper col1">
            <div id="header">
                <div class="fl_left">
                    <h1><a href="index.html">A Key-Policy Attribute-Based Temporary Keyword Search scheme for Secure Cloud Storage</a></h1>
                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col2">
            <div id="topbar">
                <div id="topnav">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="Owner_login.jsp">Data Owner</a></li>
                        <li class="active"><a href="User_login.jsp">Data User</a></li>
                        <li><a href="Cloud_login.jsp">Cloud Server</a></li>
                        <li><a href="TTP_login.jsp">TTP</a></li>
                    </ul>
                </div>
                <br class="clear" />
            </div>
        </div> 
        <div class="wrapper col3">
            <div id="container">
                <!-- Page Heading -->
                <center>
                    <h1 style="color: white;">Data User Login</h1>
                </center><br>
                <center>
                    <form action="user_signin.jsp" method="post">
                        <p>
                            <label style="color: white;">Email ID:</label>
                            <input type="email" name="email" required="Fill Data" size="50"></input>
                        </p>
                        <br><br>
                        <p style="color: white;">
                            <label>Password:</label>
                            <input type="password" name="pass" required="Fill Data" size="50"></input>

                        </p>
                        <br>
                        <div>
                            <input name="submit" type="submit" value="Login" style="width: 100px; height: 40px; color: green" />
                        </div>
                    </form>
                    <div>
                        <p style="color: white;">Not a registered user yet? <strong><a href="user_signup.jsp" class="blue-text">Sign up now!</a></strong></p>
                    </div>
                </center>
            </div>
        </div>

        <!-- Banner -->
        <!-- Sidebar -->
    </body>
</html>
