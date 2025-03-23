<%-- 
    Document   : error
    Created on : Mar 23, 2025, 4:55:31 PM
    Author     : Maxim
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error - Dental Clinic</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #fce4e4; }
        .error-container { width: 500px; margin: 100px auto; padding: 20px; background: #fff; border: 1px solid #f5c6cb; border-radius: 5px; text-align: center; }
        h2 { color: #d8000c; }
        p { color: #666; }
        a { color: #1da1f2; text-decoration: none; }
    </style>
</head>
<body>
    <div class="error-container">
        <h2>Error</h2>
        <p>
            <%
                String errorMessage = (String) request.getAttribute("errorMessage");
                if(errorMessage != null) {
                    out.print(errorMessage);
                } else {
                    out.print("An unexpected error has occurred. Please try again later.");
                }
            %>
        </p>
        <p><a href="index.jsp">Return to Homepage</a></p>
    </div>
</body>
</html>
