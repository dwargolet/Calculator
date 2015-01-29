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
        <link href="<%= request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css"/>       
        <% final String placeHolder = ""; %>
        <title>Lab 2</title>
    </head>
    <body>
        <%
            Object o = request.getAttribute("area");                                                         
            String outputMsg = o == null ? placeHolder : o.toString();                     
        %>
        
        <h4 style="text-align: center;">Rectangle Calculator</h4>
        <div id="content">
        <form id="areaForm2" name="areaForm2" method="POST" action="../areaCon">
            <table>
                <th>Length</th>
                    <td><input id="length" name="length" type="number" value="Length" required="required" /></td>
                <th>Width</th>    
                    <td><input id="width" name="width" type="number" value="Width" required="required" /></td>                               
            </table>
            <br />
            <br />
            <input type="submit" name="submit" value="Calculate" />
        </form>
        </div>
        <br />
        <br />
        <br />
        <h4 style="text-align: center;">Results</h4>
        
        <div id="results">
           <p align="center"><%= outputMsg %></p>
        </div
        <p><a href="../index.html">Back</a></p>
    </body>
</html>
