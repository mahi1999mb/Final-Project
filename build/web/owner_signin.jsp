<%-- 
    Document   : owner_signin
    Created on : 8 Jan, 2021, 12:43:39 PM
    Author     : JAVA-JP
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mail = request.getParameter("email");
    String pass = request.getParameter("pass");

    System.out.println("Check User name And Password : " + mail + pass);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement sto = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("SELECT * FROM owner_reg where email='" + mail + "' AND password='" + pass + "' AND status='Approved'");
        if (rs.next()) {
            session.setAttribute("doid", rs.getString("id"));
            session.setAttribute("doname", rs.getString("name"));
            session.setAttribute("domail", rs.getString("email"));
            //session.setAttribute("attribute", rs.getString("attribute"));

            response.sendRedirect("Owner_Home.jsp?Success");
        } else {
            response.sendRedirect("Owner_login.jsp?Failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
