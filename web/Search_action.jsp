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
                        <li><a href="User_Home.jsp">Home</a></li>
                        <li><a href="Get_Search_token.jsp">Get Search Token</a></li>
                        <li class="active"><a href="Search_file.jsp">Search File</a></li>
                        <li><a href="Request_secretkey.jsp">Request Secret Key</a></li>
                        <li><a href="View_user_secretkey.jsp">View Secret Key</a></li>
                        <li><a href="Download_file.jsp">Download</a></li>
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
                    <h1>Files</h1>
                </center><br>
                <table summary="Summary Here" cellpadding="0" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Data Owner ID</th>
                            <th>Data Owner Name</th>
                            <th>File ID</th>
                            <th>File Name</th>
                            <th>Uploaded Time</th>


                        </tr>
                    </thead>

                    <%
                        String flname = request.getParameter("fname");
                        String token = request.getParameter("token");
                        Connection con = SQLconnection.getconnection();
                        Statement st = con.createStatement();
                        Statement st1 = con.createStatement();
                        try {
                            ResultSet rs1 = st1.executeQuery("Select * from token where search_token = '" + token + "' AND expire_time > now() AND status='Approved' ");
                            if (rs1.next()) {
                                ResultSet rs = st.executeQuery("Select * from do_files where filename LIKE '%" + flname + "%' ");
                                while (rs.next()) {
                    %>
                    <tbody>
                        <tr>
                    <form method="post" action="search_action1.jsp">
                        <td><input style="background-color: transparent; border: none; color: white" name="doid" value="<%=rs.getString("doid")%>"  type="text"  readonly=""></td>
                        <td><input style="background-color: transparent; border: none; color: white" name="do_name" value="<%=rs.getString("doname")%>"  type="text"  readonly=""></td>
                        <td><input style="background-color: transparent; border: none; color: white" name="fileid"  value="<%=rs.getString("fileid")%>" type="text" readonly=""></td>
                        <td><input style="background-color: transparent; border: none; color: white" name="filename"  value="<%=rs.getString("filename")%>" type="text" readonly=""></td>
                        <td><input style="background-color: transparent; border: none; color: white" name="time"  value="<%=rs.getString("time")%>" type="text" readonly=""></td>

                    </form>
                    </tbody>
                    </tr>
                    <%                                        }
                            } else {
                             response.sendRedirect("Search_file.jsp?incorrect_Search_token");
                            }
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }

                    %>
                </table>  

            </div>
        </div>
        <!-- Banner -->
        <!-- Sidebar -->
    </body>
</html>
