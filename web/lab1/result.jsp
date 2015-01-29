<%-- 
    Document   : result
    Created on : Jan 27, 2015, 1:48:05 PM
    Author     : dworgolet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% final String ERR_MSG = "Unable to retrieve content"; %>
        <title>Area Results</title>
    </head>
    <body>
        <%
            Object o = request.getAttribute("area");                                                         
            String outputMsg = o == null ? ERR_MSG : o.toString();                     
        %>
        <h3 align="center">-Calculations Complete-</h3>
        <p align="center"><% out.println(outputMsg); %></p>
        <p><a href="index.html">Back</a></p>       
    </body>
</html>
