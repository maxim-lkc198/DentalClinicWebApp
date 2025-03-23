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
        body {
            font-family: sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .signup-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 450px; /* Adjust max width for signup form */
            text-align: center;
        }

        h2 {
            color: #1da1f2; /* Twitter blue for heading */
            margin-bottom: 20px;
        }

        input[type="text"], input[type="password"], input[type="date"], select {
            width: calc(100% - 22px); /* Adjust width */
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccd6dd;
            border-radius: 3px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #17bf63; /* Green for signup button */
            border: none;
            color: #fff;
            font-size: 16px;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #129b4d;
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }

        p.login-prompt {
            margin-top: 20px;
            color: #657786;
        }

        p.login-prompt a {
            color: #1da1f2;
            text-decoration: none;
            font-weight: bold;
        }

        p.login-prompt a:hover {
            text-decoration: underline;
        }
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
        <p class="login-prompt">Already have an account? <a href="login.jsp">Login</a></p>
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