<%-- 
    Document   : Owner_login
    Created on : 7 Jan, 2021, 5:54:54 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DBconnection.SQLconnection"%>
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
                        <li><a href="Cloud_Home.jsp">Home</a></li>
                        <li class="active"><a href="Cloud_files.jsp">View Cloud Files</a></li>
                        <li><a href="View_owners.jsp">View Data Owners</a></li>
                        <li><a href="View_users.jsp">View Users</a></li>
                        <li><a href="performance_analysis.jsp">Performance Analysis</a></li>
                        <li><a href="index.html">Logout</a></li>
                    </ul>
                </div>
                <br class="clear" />
            </div>
        </div>
        <div class="wrapper col3">
            <div id="container">
                <!-- Page Heading -->
                <div id="container">
                    <center>
                        <h1 style="color: white;">Cloud Files</h1>
                    </center><br>
                    <table summary="Summary Here" cellpadding="0" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Record Owner Name</th>
                                <th>File ID</th>
                                <th>File Name</th>
                                <th>Uploaded Time</th>
                                <th>D KEY</th>

                            </tr>
                        </thead>
                        <%
                            
                            Connection con = SQLconnection.getconnection();
                            Statement st = con.createStatement();
                            try {
                                ResultSet rs = st.executeQuery("Select * from do_files");
                                while (rs.next()) {
                        %>
                        <tbody>
                            <tr>
                                <td style="color: white;"><%=rs.getString("doname")%></td>
                                <td style="color: white;"><%=rs.getString("fileid")%></td>
                                <td style="color: white;"><%=rs.getString("filename")%></td>
                                <td style="color: white;"><%=rs.getString("time")%></td>
                                <td style="color: white;"><%=rs.getString("dkey")%></td>
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
        </div>
        <!-- Banner -->
        <!-- Sidebar -->
    </body>
</html>
