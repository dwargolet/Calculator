<%-- 
    Document   : areaForm
    Created on : Jan 27, 2015, 1:41:25 PM
    Author     : dworgolet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Area</title>
    </head>
    <body>
        <h4 style="text-align: center;">Rectangle Calculator</h4>
        <form id="areaForm" name="areaForm" method="POST" action="../calc">
            <label for = "length">Length</label>
                <input id="length" name="length" type="number" value="Length" required="required" />
            <label for = "width">Width</label>
                <input id="width" name="width" type="number" value="Width" required="required" />
                <input type="submit" name="submit" value="Calculate" />            
        </form> 
      
    </body>
</html>
