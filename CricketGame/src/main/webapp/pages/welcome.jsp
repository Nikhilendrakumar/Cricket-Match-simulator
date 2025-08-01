<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Welcome to Cricket Match Simulator</title>

  <!-- Orbitron scoreboard font -->
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@600;700&display=swap" rel="stylesheet">

  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Orbitron', sans-serif;
      background: url('https://static.vecteezy.com/system/resources/previews/023/224/016/non_2x/cricket-championship-concept-with-character-illustration-of-a-batter-in-blue-jersey-stadium-background-and-space-for-your-text-vector.jpg') no-repeat center center fixed;
      background-size: cover;
      position: relative;
      height: 100vh;
      overflow: hidden;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    body::before {
      content: "";
      position: absolute;
      top: 0; left: 0; right: 0; bottom: 0;
      background: rgba(0, 0, 0, 0.7);
      backdrop-filter: blur(6px);
      z-index: 0;
    }

    .container {
      position: relative;
      z-index: 1;
      background: rgba(255, 255, 255, 0.05);
      padding: 60px 50px;
      border-radius: 20px;
      backdrop-filter: blur(10px);
      box-shadow: 0 10px 40px rgba(0, 0, 0, 0.4);
      text-align: center;
      animation: fadeIn 1.5s ease-in;
      max-width: 700px;
      width: 90%;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    h1 {
      font-size: 50px;
      margin-bottom: 20px;
      color: #00ffff;
      text-shadow: 0 0 15px #00ffff;
    }

    p {
      font-size: 20px;
      margin-bottom: 40px;
      color: #fff;
      line-height: 1.6;
    }

    .btn {
      display: inline-block;
      margin: 10px 20px;
      padding: 16px 40px;
      font-size: 18px;
      background: linear-gradient(135deg, #00c3ff, #0072ff);
      color: #fff;
      border: none;
      border-radius: 50px;
      cursor: pointer;
      text-decoration: none;
      text-transform: uppercase;
      letter-spacing: 1px;
      font-weight: 700;
      transition: all 0.3s ease;
      box-shadow: 0 6px 20px rgba(0, 115, 255, 0.4);
    }

    .btn:hover {
      transform: translateY(-4px) scale(1.05);
      background: linear-gradient(135deg, #00aaff, #005eff);
    }

    footer {
      position: absolute;
      bottom: 20px;
      text-align: center;
      width: 100%;
      font-size: 14px;
      color: #ccc;
      z-index: 1;
    }
  </style>
</head>

<body>
  <div class="container">
    <h1>🏏 Cricket Match Simulator</h1>
    <p>Welcome! Ready to experience a thrilling virtual cricket match?<br>
      Start by registering your players or view the player list.</p>

    <a href="register" class="btn">Register Now</a>
    <a href="viewplayers" class="btn">View Players</a>
  </div>

  <footer>
    &copy; 2025 Cricket Match Simulator. All rights reserved.
  </footer>
</body>
</html>
