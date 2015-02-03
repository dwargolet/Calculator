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
        <link href="<%= request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css"/>
        <title>Lab 4</title>
        
    </head>
    <body>
        <ul class="nav nav-tabs">
            <li role="presentation"><a href="<%= request.getContextPath() %>/index.html">Main</a></li>
            <li role="presentation"><a href="<%= request.getContextPath() %>/lab1/areaForm.jsp">Lab 2</a></li>
            <li role="presentation"><a href="<%= request.getContextPath() %>/lab2/formAndResults.jsp">Lab 2</a></li>
            <li role="presentation"><a href="<%= request.getContextPath() %>/lab3/threeAreaForm.jsp">Lab 3</a></li>
            <li role="presentation" class="active"><a href="<%= request.getContextPath() %>/lab4/threeAreaForm2.jsp">Lab 4</a></li>
        </ul>
        
        
        
        <h4 style="text-align: center;">Rectangle Calculator</h4>
        <div class="row">
            <form id="recForm" name="recForm" method="POST" action="<%= request.getContextPath() %>/triTwo?action=rect">
                <div class="input-field col m4">
                    <input id="length" name="length" type="number" value="Length" required="required" placeholder="Length"/>
                </div>
                <div class="input-field col m4">   
                    <input id="width" name="width" type="number" value="Width" required="required" label="Width" placeholder="Width"/>
                </div>
                <br />
                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i>Calculate</i></button>
                </span>            
            </form>
        </div>
        <br />
        <h4 style="text-align: center;">Circle Calculator</h4>
        <form id="circForm" name="circForm" method="POST" action="<%= request.getContextPath() %>/triTwo?action=circl">
                <input id="radius" name="radius" type="number" value="radius" required="required" placeholder="Radius" />
                <br />
                <br />
            <span class="input-group-btn">
                <button class="btn btn-default" type="submit"><i>Calculate</i></button>
            </span>           
        </form>
        <br />
        
        <h4 style="text-align: center;">Triangle Calculator</h4>
        <form id="triForm" name="triForm" method="POST" action="<%= request.getContextPath() %>/triTwo?action=tri">
            <div class="input-field col m4">                
                <input id="height" name="height" type="number" value="height" required="required" placeholder="Height"/>
            </div>
            <div class="input-field col m4">   
                <input id="base" name="base" type="number" value="base" required="required" placeholder="Base"/>
            </div>
                <br />
                
                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i>Calculate</i></button>
                </span>
        </form>
        
        <br />
        <div id="results">
            <p align="center">${area}</p>
        </div>
        <br />
        
        
        
        
        
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>
