<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Match Summary</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      height: 100vh;
      background: radial-gradient(circle at top, #002244, #004466, #001122);
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      font-family: 'Orbitron', sans-serif;
      color: #ffffff;
      overflow: hidden;
    }

    h2 {
      font-size: 40px;
      margin-bottom: 60px;
      text-align: center;
      letter-spacing: 2px;
      text-transform: uppercase;
      text-shadow: 0 0 10px rgba(0,255,255,0.5);
    }

    .link-container {
      display: flex;
      gap: 50px;
      flex-wrap: wrap;
    }

    a {
      background: rgba(255, 255, 255, 0.1);
      border: 2px solid rgba(255, 255, 255, 0.3);
      color: #ffffff;
      padding: 18px 50px;
      font-size: 20px;
      border-radius: 50px;
      text-decoration: none;
      backdrop-filter: blur(10px);
      box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
      transition: all 0.3s ease;
      letter-spacing: 1px;
    }

    a:hover {
      background: rgba(0, 255, 200, 0.2);
      border: 2px solid rgba(0, 255, 200, 0.5);
      box-shadow: 0 12px 40px rgba(0, 255, 200, 0.3);
      transform: translateY(-5px) scale(1.05);
    }

    .stadium-lights {
      position: absolute;
      top: 0; left: 0; right: 0; bottom: 0;
      background: radial-gradient(circle at top, rgba(255,255,255,0.05), transparent);
      pointer-events: none;
    }
  </style>
</head>
<body>

  <div class="stadium-lights"></div>

  <h2>${msg}</h2>

  <div class="link-container">
    <a href="/viewsecondinningscore?secondteam=${secondteam}">View Second Inning Score</a>
    <a href="/matchsummary">View Match Summary</a>
  </div>

</body>
</html>
