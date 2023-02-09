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
        if (request.getParameter("Success") != null) {
    %>
    <script>alert('Registered successfully');</script>
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
                        <li class="active"><a href="Owner_login.jsp">Data Owner</a></li>
                        <li><a href="User_login.jsp">Data User</a></li>
                        <li><a href="Cloud_login.jsp">Cloud Server</a></li>
                        <li><a href="TTP_login.jsp">TTP</a></li>
                    </ul>
                </div>
                <br class="clear" />
            </div>
        </div> 
        <div class="wrapper col3">
            <div id="waterwheelCarousel">
                <!-- Page Heading -->
                <center>
                    <h1 style="color: white;">Data Owner Register</h1>
                </center><br>
                <center>
                    <form action="owner_reg" method="post">
                        <div style="color: white;">
                            Name:
                            <input type="text" placeholder="Enter Your Name" name="username" required="Fill Data" size="50"></input>
                        </div><br><br>
                        <div style="color: white;">
                            Email:
                            <input type="email" name="email" required="Fill Data" placeholder="Enter Your Email ID" size="50"></input>
                        </div><br><br>
                        <div style="color: white;">
                            DOB:
                            <input type="date" placeholder="Enter Your DOB"  placeholder="dd/mm/yyyy" name="dob" required="Fill Data" style="width: 280px;"></input>
                        </div><br><br>
                        <div style="color: white;">
                            Gender:
                            <select name="gender" style="width: 280px;">
                                <option value="">Select your Gender</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option>
                            </select>
                        </div><br><br>
                        <div style="color: white;">
                            <label>Phone:</label>  
                            <input name="phone" placeholder="Enter Phone no" type="text" required="fill data" size="50">
                        </div><br><br>
                        <div style="color: white;">
                            <label>City:</label>  
                            <input name="city" placeholder="Enter city" type="text" placeholder="Enter Your city" required="fill data" size="55">
                        </div><br><br>
                        <div style="color: white;">
                            <label>Country:</label>  
                            <input name="country" placeholder="Enter country" type="text" placeholder="Enter Your country" required="fill data" size="50">
                        </div><br><br>
                        <div style="color: white;">
                            <label>Password:</label>
                            <input type="password" name="pass" placeholder="Enter Your password" required="Fill Data" size="50"></input>
                        </div><br><br>
                        <div style="color: white;">
                            <label> Confirm Password:</label>
                            <input type="password" name="rpass" placeholder="Enter Your password" required="Fill Data" size="40"></input>
                        </div><br><br>

                        <div>
                            <input name="submit" type="submit" value="Sign up" style="width: 100px; height: 40px; color: green"/>
                        </div>
                    </form>
                </center>
            </div>
        </div>

        <!-- Banner -->
        <!-- Sidebar -->
    </body>
</html>
