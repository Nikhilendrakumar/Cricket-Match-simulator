<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Cricket Toss</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@600;700&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      padding: 0;
      height: 100vh;
      background: radial-gradient(circle at top, #0082c8, #003366);
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: 'Orbitron', sans-serif;
      color: #fff;
    }

    .toss-card {
      background: rgba(255, 255, 255, 0.05);
      padding: 50px 40px;
      border-radius: 16px;
      box-shadow: 0 20px 40px rgba(0, 255, 255, 0.15);
      max-width: 420px;
      width: 100%;
      text-align: center;
      backdrop-filter: blur(12px);
      border: 1px solid rgba(255, 255, 255, 0.1);
      transition: transform 0.3s ease;
    }

    .toss-card:hover {
      transform: translateY(-8px) scale(1.02);
    }

    .cricket-icon {
      font-size: 70px;
      color: #00ffff;
      margin-bottom: 20px;
      text-shadow: 0 0 20px #00ffff;
    }

    .toss-card h2 {
      margin-bottom: 30px;
      font-size: 32px;
      letter-spacing: 2px;
      text-shadow: 0 0 10px #00ffff;
    }

    label {
      display: block;
      margin: 15px 0 5px;
      font-weight: 600;
      text-align: left;
      color: #ffffffcc;
    }

    select {
      width: 100%;
      padding: 14px;
      border-radius: 8px;
      border: none;
      font-size: 16px;
      margin-bottom: 20px;
      background: rgba(255, 255, 255, 0.1);
      color: #fff;
      outline: none;
      backdrop-filter: blur(5px);
    }

    select option {
      background: #003366;
      color: #fff;
    }

    button {
      width: 100%;
      padding: 16px;
      background: #00ffff;
      border: none;
      border-radius: 50px;
      color: #003366;
      font-size: 18px;
      font-weight: 700;
      cursor: pointer;
      letter-spacing: 1px;
      transition: background 0.3s ease, transform 0.2s ease;
    }

    button:hover {
      background: #00e6e6;
      transform: translateY(-3px);
    }

    button:active {
      transform: scale(0.98);
    }
  </style>
</head>
<body>

  <div class="toss-card">
    <div class="cricket-icon">
      <i class="fas fa-baseball-ball"></i>
    </div>
    <h2>🏏 Cricket Toss</h2>
    <form action="/toss" method="get">
      <label for="tossChoice">Choose Head or Tail:</label>
      <select id="tossChoice" name="s" required>
        <option value="Head">Head</option>
        <option value="Tail">Tail</option>
      </select>

      <label for="teamChoice">Choose Your Team:</label>
      <select id="teamChoice" name="s1" required>
        <option value="RCB">RCB</option>
        <option value="CSK">CSK</option>
      </select>

      <button type="submit">Toss Now</button>
    </form>
  </div>

</body>
</html>
