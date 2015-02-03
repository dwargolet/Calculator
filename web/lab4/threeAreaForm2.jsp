<%-- 
    Document   : threeAreaForm2
    Created on : Jan 29, 2015, 8:30:40 AM
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        <% final String placeHolder = ""; %>
        <title>Lab 4</title>
        <link href="<%= request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <h4 style="text-align: center;">Rectangle Calculator</h4>
        <div class="row">
            <form id="recForm" name="recForm" method="POST" action="<%= request.getContextPath() %>/triTwo?action=rect">
                <div class="input-field col m4">
                    <label for = "length">Length</label>
                    <input id="length" name="length" type="number" value="Length" required="required"/>
                </div>
                <div class="input-field col m4">
                    <label for = "width">Width</label>    
                    <input id="width" name="width" type="number" value="Width" required="required" label="Width"/>
                </div>
                <br />
                <br />
                    <input type="submit" name="submit" value="Calculate" />            
            </form>
        </div>
        <br />
        <br />
        
        <h4 style="text-align: center;">Circle Calculator</h4>
        <form id="circForm" name="circForm" method="POST" action="<%= request.getContextPath() %>/triTwo?action=circl">
            <label for = "radius">Radius</label>    
                <input id="radius" name="radius" type="number" value="radius" required="required" label="Radius" />
                <br />
                <br />
            <input type="submit" name="submit" value="Calculate" />            
        </form>
        
        <br />
        <br />
        
        <h4 style="text-align: center;">Triangle Calculator</h4>
        <form id="triForm" name="triForm" method="POST" action="<%= request.getContextPath() %>/triTwo?action=tri">
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
            <p align="center">${result}</p>
        </div>
        <br />
        
        <p><a href="<%= request.getContextPath() %>/index.html">Back</a></p>
        
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>
