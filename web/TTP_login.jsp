<%-- 
    Document   : Owner_login
    Created on : 7 Jan, 2021, 5:54:54 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        if (request.getParameter("failed") != null) {
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
                        <li><a href="User_login.jsp">Data User</a></li>
                        <li><a href="Cloud_login.jsp">Cloud Server</a></li>
                        <li class="active"><a href="TTP_login.jsp">TTP</a></li>
                    </ul>
                </div>
                <br class="clear" />
            </div>
        </div>
        <div class="wrapper col3">
            <div id="waterwheelCarousel">
                <!-- Page Heading -->
                <div id="respond">
                    <center>
                        <h1 style="color: white;">TTP Login</h1>
                    </center><br>
                    <center>
                        <form action="TTP" method="post">
                            <p style="color: white;">
                                <label>Email ID:</label>
                                <input type="text" name="email" required="Fill Data" size="50"></input>
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
                    </center>
                </div>
            </div>
        </div>
        <!-- Banner -->
        <!-- Sidebar -->
    </body>
</html>
