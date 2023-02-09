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


        <title>A Key Policy Based Search</title>

        <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
        <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
        <!-- Waterwheel Carousel -->
        <script type="text/javascript" src="layout/scripts/carousel/jquery.waterwheelCarousel.min.js"></script>
        <script type="text/javascript" src="layout/scripts/carousel/jquery.waterwheelCarousel.setup.js"></script>
        <!-- / Waterwheel Carousel -->
    </head>
    <%
        if (request.getParameter("Successful") != null) {
    %>
    <script>alert('File Uploaded successfully');</script>
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
                        <li class="active"><a href="File_upload.jsp">File Upload</a></li>
                        <li><a href="View_files.jsp">View Files</a></li>
                        <li><a href="View_secretkey.jsp">View Secret Key Request</a></li>
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
                    <h1 style="color: white;">Upload File</h1>
                </center><br>

                <div class="col3">
                    <form action="uploadfile" method="post" enctype="multipart/form-data">
                        <p>
                        <div>                  
                            <p style="color: white;">File Key:</p>
                            <input type="text" name="filename" placeholder="File key" required="Fill Data" size="30">                  
                        </div>
                        </p>
                        <br><br>
                        <p>
                        <div>
                            <p style="color: white;">Select File:</p>
                            <!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
                            <input type="file" name="fileToUpload" required="Fill Data"><br>
                            <p style="color: white;">Maximum upload size is 5 MB.</p>                  
                        </div>
                        </p>
                        <br><br>
                        <div>
                            <button type="submit" style="width: 100px; height: 40px; color: green">Upload</button>
                        </div>                           
                    </form>
                </div>

            </div>
        </div>
        <!-- Banner -->
        <!-- Sidebar -->
    </body>
</html>
