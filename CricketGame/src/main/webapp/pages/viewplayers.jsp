<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View Teams and Players</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      min-height: 100vh;
      background: linear-gradient(135deg, #0a1f44, #014421);
      font-family: 'Orbitron', sans-serif;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 40px 20px;
      color: #f0f0f0;
    }

    h2 {
      font-size: 38px;
      color: #00bcd4; /* Electric Blue */
      text-shadow: 0 0 12px #00bcd4;
      margin-bottom: 30px;
      letter-spacing: 1px;
    }

    table {
      border-collapse: collapse;
      width: 80%;
      max-width: 800px;
      background: rgba(255, 255, 255, 0.06);
      backdrop-filter: blur(4px);
      border-radius: 8px;
      overflow: hidden;
      box-shadow: 0 8px 30px rgba(0,0,0,0.35);
    }

    th, td {
      padding: 15px 20px;
      text-align: center;
    }

    th {
      background: rgba(0, 188, 212, 0.2); /* Electric Blue background */
      color: #00bcd4;
      font-size: 18px;
      text-transform: uppercase;
    }

    td {
      background: rgba(255, 255, 255, 0.02);
      font-size: 16px;
    }

    tr:nth-child(even) td {
      background: rgba(255, 255, 255, 0.04);
    }

    tr:hover td {
      background: rgba(0, 188, 212, 0.1);
      cursor: default;
    }

    .button-container {
      margin-top: 40px;
      text-align: center;
    }

    .back-btn, .Next-btn {
      text-decoration: none;
      padding: 12px 35px;
      color: #fff;
      border-radius: 50px;
      font-size: 17px;
      display: inline-block;
      margin: 0 15px;
      box-shadow: 0 6px 20px rgba(0,0,0,0.4);
      letter-spacing: 1px;
      transition: all 0.3s ease;
      background: linear-gradient(90deg, #007acc, #00bcd4);
    }

    .back-btn:hover, .Next-btn:hover {
      background: linear-gradient(90deg, #00bcd4, #007acc);
      transform: translateY(-3px);
    }
  </style>
</head>
<body>
  <h2>Players List</h2>

  <table>
    <tr>
      <th>Player Name</th>
      <th>Team Name</th>
    </tr>

    <c:forEach var="team" items="${teams}">
      <c:forEach var="player" items="${team.players}">
        <tr>
          <td>${player.playerName}</td>
          <td>${team.teamName}</td>
        </tr>
      </c:forEach>
    </c:forEach>
  </table>

  <div class="button-container">
    <a href="/welcome" class="back-btn">Back</a>
    <a href="/choosetoss" class="Next-btn">Next</a>
  </div>
</body>
</html>
