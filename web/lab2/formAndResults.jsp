<%-- 
    Document   : formAndResults
    Created on : Jan 28, 2015, 10:16:35 PM
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% final String placeHolder = ""; %>
        <title>Lab 2</title>
    </head>
    <body>
        <%
            Object o = request.getAttribute("area");                                                         
            String outputMsg = o == null ? placeHolder : o.toString();                     
        %>
        <form id="areaForm2" name="areaForm2" method="POST" action="../areaCon">
                <input id="length" name="length" type="number" value="Length" required />
                <input id="width" name="width" type="number" value="Width" required />
                <input type="submit" name="submit" value="Calculate" />            
        </form>
        <br />
        <br />
        <br />
        
        <p align="center"><% out.println(outputMsg); %></p>
        <p><a href="index.html">Back</a></p>
    </body>
</html>
