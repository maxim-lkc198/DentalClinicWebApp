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
        body {
            font-family: sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 400px; /* Adjust max width for login form */
            text-align: center;
        }

        h2 {
            color: #1da1f2; /* Twitter blue for heading */
            margin-bottom: 20px;
        }

        input[type="text"], input[type="password"], select {
            width: calc(100% - 22px); /* Adjust width to account for padding and border */
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccd6dd;
            border-radius: 3px;
            box-sizing: border-box; /* Ensure padding and border are inside the element's total width and height */
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #1da1f2;
            border: none;
            color: #fff;
            font-size: 16px;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0c85d0;
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }

        p.signup-prompt {
            margin-top: 20px;
            color: #657786;
        }

        p.signup-prompt a {
            color: #1da1f2;
            text-decoration: none;
            font-weight: bold;
        }

        p.signup-prompt a:hover {
            text-decoration: underline;
        }
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
        <p class="signup-prompt">Don't have an account? <a href="signup.jsp">Sign Up</a></p>
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