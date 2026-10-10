
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Code Crew Project Manager</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #101828, #344767);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            background: white;
            width: 360px;
            max-width: 90%;
            padding: 35px;
            border-radius: 16px;
            box-shadow: 0 12px 35px rgba(0, 0, 0, 0.25);
        }

        h1 {
            text-align: center;
            color: #243b64;
            margin-bottom: 8px;
        }

        .subtitle {
            text-align: center;
            color: #667085;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin: 14px 0 7px;
            font-weight: bold;
            color: #344054;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #d0d5dd;
            border-radius: 7px;
            font-size: 15px;
        }

        button {
            width: 100%;
            margin-top: 22px;
            padding: 12px;
            background: #3157c8;
            color: white;
            border: none;
            border-radius: 7px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #2445a8;
        }

        .error {
            color: #c62828;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="login-box">

<% if ("1".equals(request.getParameter("registered"))) { %>
    <p style="color: green; text-align: center;">
        Registration successful! Please login.
    </p>
<% } %>

        <h1>Welcome Back!</h1>
        <p class="subtitle">Code Crew Project Manager</p>

        <% if ("1".equals(request.getParameter("error"))) { %>
            <p class="error">Invalid email or password.</p>
        <% } %>

        <form action="login" method="post">
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email"
                   placeholder="Enter your email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password"
                   placeholder="Enter your password" required>

            <button type="submit">Login</button>
        </form>

<p style="text-align: center; margin-top: 20px; color: #667085;">
    Don't have an account?
    <a href="register.jsp" style="color: #3157c8;">Create Account</a>
</p>

    </div>
</body>
</html>
