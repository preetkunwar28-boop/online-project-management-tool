
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Code Crew Project Manager</title>

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
            padding: 25px 0;
        }

        .register-box {
            background: white;
            width: 390px;
            max-width: 90%;
            padding: 32px;
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
            margin-bottom: 24px;
        }

        label {
            display: block;
            margin: 14px 0 7px;
            font-weight: bold;
            color: #344054;
        }

        input, select {
            width: 100%;
            padding: 12px;
            border: 1px solid #d0d5dd;
            border-radius: 7px;
            font-size: 15px;
        }

        button {
            width: 100%;
            margin-top: 22px;
            padding: 13px;
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

        .login-link {
            text-align: center;
            margin-top: 20px;
            color: #667085;
        }

        a {
            color: #3157c8;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="register-box">
        <h1>Create Account</h1>
        <p class="subtitle">Join Code Crew Project Manager</p>

        <form action="register" method="post">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name"
                   placeholder="Enter your full name" required>

            <label for="email">Email Address</label>
            <input type="email" id="email" name="email"
                   placeholder="Enter your email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password"
                   placeholder="Create a password"
                   minlength="8" required>

            <label for="role">Role</label>
            <select id="role" name="role" required>
                <option value="Member">Team Member</option>
                <option value="Manager">Project Manager</option>
            </select>

            <button type="submit">Create Account</button>
        </form>

        <p class="login-link">
            Already have an account?
            <a href="login.jsp">Login</a>
        </p>
    </div>
</body>
</html>
