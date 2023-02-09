<%-- 
    Document   : download_file1
    Created on : 11 Jan, 2021, 3:19:48 PM
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
      <%
        if (request.getParameter("download_successs") != null) {
    %>
    <script>alert('File Downloaded successfully');</script>
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
                        <li><a href="User_Home.jsp">Home</a></li>
                        <li><a href="Get_Search_token.jsp">Get Search Token</a></li>
                        <li><a href="Search_file.jsp">Search File</a></li>
                        <li><a href="Request_secretkey.jsp">Request Secret Key</a></li>
                        <li><a href="View_user_secretkey.jsp">View Secret Key</a></li>
                        <li class="active"><a href="Download_file.jsp">Download</a></li>
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
                    <h1 style="color: white;">Download File</h1>
                </center><br>
                <%
                    String uname = request.getParameter("uname");
                    String uid = request.getParameter("uid");
                    String fileid = request.getParameter("fileid");
                    String filename = request.getParameter("filename");
                    Connection con = SQLconnection.getconnection();
                    Statement st = con.createStatement();
                    Statement st1 = con.createStatement();
                    try {

                        ResultSet rs = st.executeQuery("Select * from request where status = 'Approved' AND uname ='" + uname + "' AND uid ='" + uid + "' ");
                        if (rs.next()) {
                            ResultSet rs1 = st1.executeQuery("Select * from do_files where filename ='" + filename + "' AND fileid ='" + fileid + "' ");
                            while (rs1.next()) {

                %>
                <center>
                <form action="Download" method="post" >
                    <input hidden="" name="fileid" type="text" value="<%=fileid%>">
                    <label style="color: white">File Name</label><br>
                    <div style="width: 500px" >
                        <input type="text" name="filename"value="<%=filename%>" readonly=" required="" size="45" autocomplete="off" >
                    </div><br><br>

                    <label style="color: white">Encrypted Data</label><br>
                    <div  style="width: 500px" >
                        <textarea style="height: 150px;width: 250px;" readonly="" autocomplete="off" ><%=rs1.getString("enc_data")%></textarea>
                    </div><br><br>
                    <label style="color: white">Enter Decryption Key</label>
                    <div class="form-group" style="width: 500px" >
                        <input type="text" name="dkey" required="" size="45" autocomplete="off" >
                    </div>
                    <br>
                    <br>
                    <div class="text-center" style="width: 200px" >
                        <button type="submit" style="width: 100px; height: 40px; color: green">Download</button>
                        <br><br>
                    </div>
                </form>
                </center>
                <%                                        }
                        }

                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }

                %>
            </div>
        </div>
        <!-- Banner -->
        <!-- Sidebar -->
    </body>
</html>
