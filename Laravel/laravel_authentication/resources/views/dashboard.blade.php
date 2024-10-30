<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            display: flex;
        }
        .sidebar {
            width: 250px;
            background-color: #343a40;
            color: white;
            height: 100vh;
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }
        .sidebar h2 {
            color: #ffffff;
        }
        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }
        .sidebar ul li {
            margin: 15px 0;
        }
        .sidebar ul li a {
            color: white;
            text-decoration: none;
            padding: 10px;
            display: block;
            border-radius: 4px;
        }
        .sidebar ul li a:hover {
            background-color: #495057;
        }
        .main-content {
            flex-grow: 1;
            padding: 20px;
        }
        .main-content h1 {
            margin: 0 0 20px;
        }
        .card {
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <div class="sidebar">
        <h2>Dashboard</h2>
        <ul>
            <li><a href="#">Overview</a></li>
            <li><a href="#">Users</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Reports</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        @auth
        <h1>Hello {{ Auth::user()->name }} {{ Auth::user()->email }}</h1>
        @endauth
        @guest
        <h1>Welcome Guest</h1>
        @endguest
        {{-- <h1>Welcome {{ Auth::user()->name }} {{ Auth::user()->email }}</h1> --}}
        <div class="card">
            <h2>Overview</h2>
            <p>This is a brief overview of your dashboard. Here you can find key metrics and insights.</p>
        </div>
        <div class="card">
            <h2>Recent Activity</h2>
            <p>Check out your recent activities and updates here.</p>
        </div>
        <div class="card">
            <h2>Notifications</h2>
            <p>Stay updated with the latest notifications and alerts.</p>
        </div>
    </div>

</body>
</html>
