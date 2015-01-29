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
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        
        <% final String placeHolder = ""; %>
        <title>Lab 2</title>
    </head>
    <body>
        <%
            Object o = request.getAttribute("area");                                                         
            String outputMsg = o == null ? placeHolder : o.toString();                     
        %>
        <h4 style="text-align: center;">Rectangle Calculator</h4>
        <form id="areaForm2" name="areaForm2" method="POST" action="../areaCon">
            <label for = "length">Length</label>
                <input id="length" name="length" type="number" value="Length" required="required" />
            <label for = "width">Width</label>    
                <input id="width" name="width" type="number" value="Width" required="required" />
                <br />
                <br />
                <input type="submit" name="submit" value="Calculate" />            
        </form>
        <br />
        <br />
        <br />
        <h4 style="text-align: center;">Results</h4>
        <p align="center"><% out.println(outputMsg); %></p>
        <p><a href="../index.html">Back</a></p>
    </body>
</html>
