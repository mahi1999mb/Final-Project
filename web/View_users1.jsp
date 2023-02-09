<%-- 
    Document   : Owner_login
    Created on : 7 Jan, 2021, 5:54:54 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
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
        if (request.getParameter("Granted") != null) {
    %>
    <script>alert('Data_User Approved successfully');</script>
    <%            }
    %>
    <body
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
                        <li><a href="TTP_Home.jsp">Home</a></li>
                        <li><a href="View_owners1.jsp">View Owners</a></li>
                        <li class="active"><a href="View_users1.jsp">View Users</a></li>
                        <li><a href="View_user_req.jsp">View User Request</a></li>
                        <li><a href="index.html">Logout</a></li>
                    </ul>
                </div>
                <br class="clear" />
            </div>
        </div>
        <div class="wrapper col3">
            <div id="container">
                <center>
                    <h1 style="color: white;">Data Users</h1>
                </center><br>
                <table summary="Summary Here" cellpadding="0" cellspacing="0">
                    <thead>
                        <tr>
                            <th>User ID </th>
                            <th>Name </th>
                            <th>Email </th>
                            <th>Gender</th>
                            <th>DOB</th>
                            <th>City</th>
                            <th>Country</th>
                            <th>Action</th>

                        </tr>
                    </thead>
                    </thead>
                    <%

                        Connection con = SQLconnection.getconnection();
                        Statement st = con.createStatement();
                        try {
                            ResultSet rs = st.executeQuery("Select * from user_reg");
                            while (rs.next()) {
                    %>
                    <tbody>
                        <tr>
                    <form method="post" action="user_approve.jsp">
                        <td><input style="background-color: transparent; border: none; color: white" name="uid" value="<%=rs.getString("id")%>"  type="text"  readonly=""</td>
                        <td><input style="background-color: transparent; border: none; color: white" name="uname" value="<%=rs.getString("name")%>"  type="text"  readonly=""</td>
                        <td><input style="background-color: transparent; border: none; color: white" size="35" name="email" value="<%=rs.getString("email")%>"  type="text"  readonly=""</td>
                        <td><input style="background-color: transparent; border: none; color: white" name="gender" value="<%=rs.getString("gender")%>"  type="text"  readonly=""</td>
                        <td><input style="background-color: transparent; border: none; color: white" name="dob" value="<%=rs.getString("dob")%>"  type="text"  readonly=""</td>
                        <td><input style="background-color: transparent; border: none; color: white" name="city" value="<%=rs.getString("city")%>"  type="text"  readonly=""</td>
                        <td><input style="background-color: transparent; border: none; color: white" name="country" value="<%=rs.getString("country")%>"  type="text"  readonly=""</td>
                        <td><button type="submit" style="width: 100px; height: 40px; color: green">Approve</button></td>
                    </form>
                    </tr>
                    <%                                        }
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }

                    %>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- Banner -->
        <!-- Sidebar -->
    </body>
</html>
