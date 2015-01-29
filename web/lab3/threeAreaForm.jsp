<%-- 
    Document   : threeAreaForm
    Created on : Jan 29, 2015, 8:30:40 AM
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% final String placeHolder = ""; %>
        <title>Lab 3</title>
        <link href="<%= request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            Object o = request.getAttribute("area");                                                         
            String outputMsg = o == null ? placeHolder : o.toString();                     
        %>
        <h4 style="text-align: center;">Rectangle Calculator</h4>
        
        <form id="recForm" name="recForm" method="POST" action="<%= request.getContextPath() %>/tri?action=rect">
            <label for = "length">Length</label>
                <input id="length" name="length" type="number" value="Length" required="required"/>
            <label for = "width">Width</label>    
                <input id="width" name="width" type="number" value="Width" required="required" label="Width"/>
            <br />
            <br />
                <input type="submit" name="submit" value="Calculate" />            
        </form>
        
        <br />
        <br />
        
        <h4 style="text-align: center;">Circle Calculator</h4>
        <form id="circForm" name="circForm" method="POST" action="<%= request.getContextPath() %>/tri?action=circl">
            <label for = "radius">Radius</label>    
                <input id="radius" name="radius" type="number" value="radius" required="required" label="Radius" />
                <br />
                <br />
            <input type="submit" name="submit" value="Calculate" />            
        </form>
        
        <br />
        <br />
        
        <h4 style="text-align: center;">Triangle Calculator</h4>
        <form id="triForm" name="triForm" method="POST" action="<%= request.getContextPath() %>/tri?action=tri">
            <label for = "height">Height</label>
                <input id="height" name="height" type="number" value="height" required="required" label="Height"/>
            <label for = "base">Base</label>    
                <input id="base" name="base" type="number" value="base" required="required" label="Base"/>
                <br />
                <br />
                <input type="submit" name="submit" value="Calculate" />            
        </form>
        
        <br />
        <div id="results">
            <p align="center"><%= outputMsg %></p>
        </div>
        <br />
        
        <p><a href="<%= request.getContextPath() %>/index.html">Back</a></p>
    </body>
</html>
