
<%@ page import="com.projectmanagement.model.User" %>
<%
    User loggedInUser = (User) session.getAttribute("user");

    if (loggedInUser == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String userName = loggedInUser.getName();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Code Crew</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f6fb;
            color: #243047;
        }

        .navbar {
            background: #172554;
            color: white;
            padding: 20px 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 15px;
            flex-wrap: wrap;
        }

        .navbar h2 {
            margin: 0;
        }

        .logout {
            color: white;
            text-decoration: none;
            background: #dc3545;
            padding: 10px 16px;
            border-radius: 7px;
        }

        .container {
            max-width: 1100px;
            margin: 35px auto;
            padding: 0 20px;
        }

        .welcome {
            margin-bottom: 30px;
        }

        .welcome h1 {
            margin-bottom: 8px;
        }

        .welcome p {
            color: #667085;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 14px rgba(0, 0, 0, 0.06);
            border-top: 4px solid #4263eb;
        }

        .card h3 {
            margin-top: 0;
            color: #667085;
            font-size: 16px;
        }

        .card p {
            font-size: 27px;
            font-weight: bold;
            margin-bottom: 0;
            color: #172554;
        }

        .section {
            margin-top: 30px;
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 14px rgba(0, 0, 0, 0.06);
        }

        .section h2 {
            margin-top: 0;
        }

        .empty {
            color: #667085;
            padding: 15px 0;
        }

        footer {
            text-align: center;
            color: #667085;
            padding: 25px;
        }
    </style>
</head>

<body>

    <nav class="navbar">
        <h2>Code Crew</h2>
        <a class="logout" href="login.jsp">Logout</a>
    </nav>

    <main class="container">

        <div class="welcome">
            <h1>Welcome, <%= userName %>!</h1>
            <p>Manage your projects and tasks from one place.</p>
        </div>

        <div class="cards">

            <div class="card">
                <h3>Total Projects</h3>
                <p>My Projects</p>
            </div>

            <div class="card">
                <h3>Task Management</h3>
                <p>My Tasks</p>
            </div>

            <div class="card">
                <h3>Team Workspace</h3>
                <p>Code Crew</p>
            </div>

        </div>

        <section class="section">
            <h2>My Projects</h2>
            <p class="empty">
                Your projects will appear here when project listing is connected.
            </p>
        </section>

        <section class="section">
            <h2>My Tasks</h2>
            <p class="empty">
                Your assigned tasks will appear here when task listing is connected.
            </p>
        </section>

    </main>

    <footer>
        Online Project Management Tool | Developed by Code Crew
    </footer>

</body>
</html>
