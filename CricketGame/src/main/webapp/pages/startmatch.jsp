<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Match Progress</title>
  <style>
    body {
      margin: 0;
      height: 100vh;
      background: url('https://as2.ftcdn.net/v2/jpg/07/96/34/59/1000_F_796345948_VoezX9GWSkPU35jEY2x6Zue3snUTBvlm.jpg') no-repeat center center/cover;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      color: #f0f0f0;
      overflow: hidden;
      position: relative;
    }

    body::before {
      content: "";
      position: absolute;
      top: 0; left: 0; right: 0; bottom: 0;
      background: rgba(0,0,0,0.5); /* dark overlay for better text contrast */
      z-index: 0;
    }

    h1 {
      font-size: 48px;
      margin-bottom: 50px;
      text-align: center;
      text-shadow: 0 0 20px rgba(0, 255, 150, 0.8);
      letter-spacing: 2px;
      color: #00ff99;
      z-index: 1;
    }

    h2 {
      font-size: 42px;
      margin: 0;
      padding: 20px 60px;
      background: rgba(0, 255, 102, 0.1);
      border-radius: 20px;
      border: 2px solid #00ff99;
      box-shadow: 0 0 25px rgba(0, 255, 150, 0.5);
      backdrop-filter: blur(6px);
      transition: transform 0.5s ease;
      z-index: 1;
    }

    .fade {
      animation: fadeInScale 1s ease forwards;
    }

    @keyframes fadeInScale {
      0% { opacity: 0; transform: scale(0.8); }
      100% { opacity: 1; transform: scale(1); }
    }

    .progress-container {
      position: absolute;
      bottom: 50px;
      width: 80%;
      height: 18px;
      background: rgba(255, 255, 255, 0.3);
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
      z-index: 1;
    }

    .progress-bar {
      height: 100%;
      width: 0%;
      background: linear-gradient(90deg, #ffcc00, #ff6600);
      border-radius: 10px;
      transition: width 0.5s ease;
    }
  </style>
</head>
<body>

  <h1>${msg}</h1>
  <h2 id="playerLine"></h2>

  <div class="progress-container">
    <div class="progress-bar" id="progressBar"></div>
  </div>

  <script>
    const players = [
      <c:forEach var="player" items="${playingPlayers}">
        "${player.playerName}",
      </c:forEach>
    ];
    console.log(players);

    let i = 0;
    const display = document.getElementById("playerLine");
    const progressBar = document.getElementById("progressBar");

    function showNextPlayer() {
      if (i < players.length) {
        display.classList.remove('fade');
        void display.offsetWidth; // reflow for animation restart
        display.innerText = "🏏 " + players[i] + " is playing";
        display.classList.add('fade');

        const progress = ((i + 1) / players.length) * 100;
        progressBar.style.width = progress + "%";

        i++;
        setTimeout(showNextPlayer, 2000);
      } else {
        window.location.href = "${nextUrl}";
      }
    }

    showNextPlayer();
  </script>
</body>
</html>
