<%-- 
    Document   : login
    Created on : Mar 23, 2025, 4:37:58 PM
    Author     : Maxim
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Dental Clinic</title>
    <style>
        body { font-family: 'Helvetica Neue', Arial, sans-serif; background-color: #f5f8fa; }
        .login-container { width: 350px; margin: 100px auto; padding: 20px; background: #fff; border: 1px solid #e1e8ed; border-radius: 5px; }
        h2 { text-align: center; color: #14171a; }
        input[type="text"], input[type="password"], select { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ccd6dd; border-radius: 3px; }
        button { width: 100%; padding: 10px; background-color: #1da1f2; border: none; color: #fff; font-size: 16px; border-radius: 3px; cursor: pointer; }
        .error { color: red; text-align: center; }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="login" method="post">
            <input type="text" name="username" placeholder="Username" required />
            <input type="password" name="password" placeholder="Password" required />
            <select name="role" required>
                <option value="">Select Role</option>
                <option value="Admin">Admin</option>
                <option value="Doctor">Doctor</option>
                <option value="Receptionist">Receptionist</option>
                <option value="Customer">Customer</option>
            </select>
            <button type="submit">Log In</button>
        </form>
        <p style="text-align: center;">Don't have an account? <a href="signup.jsp">Sign Up</a></p>
        <div class="error">
            <%
                String errorMessage = (String) request.getAttribute("errorMessage");
                if(errorMessage != null) {
                    out.print(errorMessage);
                }
            %>
        </div>
    </div>
</body>
</html>
