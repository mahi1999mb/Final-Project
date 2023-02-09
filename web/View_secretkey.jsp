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


        <title>A Key Policy Based Search</title>

        <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
        <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
        <!-- Waterwheel Carousel -->
        <script type="text/javascript" src="layout/scripts/carousel/jquery.waterwheelCarousel.min.js"></script>
        <script type="text/javascript" src="layout/scripts/carousel/jquery.waterwheelCarousel.setup.js"></script>
        
        <!-- / Waterwheel Carousel -->
    </head>
     <%
        if (request.getParameter("File_approved") != null) {
    %>
    <script>alert('File Approved successfully');</script>
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
                        <li><a href="Owner_Home.jsp">Home</a></li>
                        <li><a href="File_upload.jsp">File Upload</a></li>
                        <li><a href="View_files.jsp">View Files</a></li>
                        <li class="active"><a href="View_secretkey.jsp">View Secret Key Request</a></li>
                        <li><a href="index.html">Logout</a></li>
                    </ul>
                </div>
                <br class="clear" />
            </div>
        </div>
        <div class="wrapper col3">
            <div id="container">
                <!-- Page Heading -->
                <center>
                    <h1 style="color: white;">File Secret Key</h1>
                </center><br>
                <table summary="Summary Here" cellpadding="0" cellspacing="0">
                    <thead>
                        <tr>
                            <th>User Name</th>
                            <th>File ID</th>
                            <th>File Name</th>
                            <th>Uploaded Time</th>
                            <th>Approve File Request</th>

                        </tr>
                    </thead>

                    <%
                        String doid = (String) session.getAttribute("doid");
                        Connection con = SQLconnection.getconnection();
                        Statement st = con.createStatement();
                        Statement st1 = con.createStatement();
                        try {

                            ResultSet rs = st1.executeQuery("Select * from request where file_req = 'Request_sent' AND doid = '" + doid + "' ");
                            while (rs.next()) {

                    %>
                    <tbody>
                        <tr>
                    <form method="post" action="approve.jsp">
                        <td><input style="background-color: transparent; border: none; color: white" name="uname" value="<%=rs.getString("uname")%>"  type="text"  readonly=""></td>
                        <td><input style="background-color: transparent; border: none; color: white" name="fileid"  value="<%=rs.getString("fileid")%>" type="text" readonly=""></td>
                        <td><input style="background-color: transparent; border: none; color: white" name="filename"  value="<%=rs.getString("filename")%>" type="text" readonly=""></td>
                        <td><input style="background-color: transparent; border: none; color: white" name="time"  value="<%=rs.getString("time")%>" type="text" readonly=""></td>
                        <td><button type="submit" style="width: 100px; height: 40px; color: green" >Approve</button></td>
                    </form>
                    </tbody>
                    </tr>
                    <%                                        }

                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }

                    %>
                </table>  

            </div>
            <!-- Banner -->
            <!-- Sidebar -->
            
    </body>
 
</html>
