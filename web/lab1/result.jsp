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
        <title>Area Results</title>
    </head>
    <body>
        <h3 align="center"><%
            Object o = request.getAttribute("area");                                    
            
            
            if (o == null){
                out.println("No object");
            }else{
                out.println(o.toString());
            }
            
            
        %>
        </h3>
        <p><a href="index.html">Back</a></p>       
    </body>
</html>
