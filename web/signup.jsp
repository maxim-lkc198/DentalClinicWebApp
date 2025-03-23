<%-- 
    Document   : signup
    Created on : Mar 23, 2025, 4:54:49 PM
    Author     : Maxim
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up - Dental Clinic</title>
    <style>
        body { font-family: 'Helvetica Neue', Arial, sans-serif; background-color: #f5f8fa; }
        .signup-container { width: 400px; margin: 50px auto; padding: 20px; background: #fff; border: 1px solid #e1e8ed; border-radius: 5px; }
        h2 { text-align: center; color: #14171a; }
        input, select { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ccd6dd; border-radius: 3px; }
        button { width: 100%; padding: 10px; background-color: #1da1f2; border: none; color: #fff; font-size: 16px; border-radius: 3px; cursor: pointer; }
        .error { color: red; text-align: center; }
    </style>
</head>
<body>
    <div class="signup-container">
        <h2>Sign Up</h2>
        <form action="signup" method="post">
            <input type="text" name="fullname" placeholder="Full Name" required />
            <input type="date" name="dateOfBirth" placeholder="Date of Birth" required />
            <select name="gender" required>
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
            <input type="text" name="phonenumber" placeholder="Phone Number" required />
            <input type="password" name="password" placeholder="Password" required />
            <button type="submit">Sign Up</button>
        </form>
        <p style="text-align: center;">Already have an account? <a href="login.jsp">Login</a></p>
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
