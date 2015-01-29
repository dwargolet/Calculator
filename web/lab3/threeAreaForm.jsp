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
    </head>
    <body>
        <%
            Object o = request.getAttribute("area");                                                         
            String outputMsg = o == null ? placeHolder : o.toString();                     
        %>
        <h4 style="text-align: center;">Rectangle Calculator</h4>
        <form id="recForm" name="recForm" method="POST" action="/tri?action=rec">
            <label for = "length">Length</label>
                <input id="length" name="length" type="number" value="Length" required="required"/>
            <label for = "width">Width</label>    
                <input id="width" name="width" type="number" value="Width" required="required" label="Width"/>
                <input type="submit" name="submit" value="Calculate" />            
        </form>
        <br />
        <p align="center"><% out.println(outputMsg); %></p>
        <br />
        <h4 style="text-align: center;">Circle Calculator</h4>
        <form id="circForm" name="circForm" method="POST" action="/tri?action=circ">
            <label for = "radius">Radius</label>    
                <input id="radius" name="radius" type="number" value="radius" required="required" label="Radius" />
            <input type="submit" name="submit" value="Calculate" />            
        </form>
        <br />
        <p align="center"><% out.println(outputMsg); %></p>
        <br />
        <h4 style="text-align: center;">Triangle Calculator</h4>
        <form id="triForm" name="triForm" method="POST" action="/tri?action=tri">
            <label for = "height">Height</label>
                <input id="height" name="height" type="number" value="height" required="required" label="Height"/>
            <label for = "base">Base</label>    
                <input id="base" name="base" type="number" value="base" required="required" label="Base"/>
                <input type="submit" name="submit" value="Calculate" />            
        </form>
        <br />
        <p align="center"><% out.println(outputMsg); %></p>
        <br />
        <p><a href="index.html">Back</a></p>
    </body>
</html>
