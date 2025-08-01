<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <title>Second Inning Score</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&display=swap" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(135deg, #001f3f, #003366);
      margin: 0;
      padding: 40px 0;
      font-family: 'Orbitron', sans-serif;
      color: #ffffff;
    }

    h2 {
      text-align: center;
      font-size: 36px;
      color: #00ffff;
      text-shadow: 0 0 10px #00ffff;
      margin-bottom: 40px;
      letter-spacing: 2px;
    }

    table {
      border-collapse: collapse;
      width: 90%;
      margin: 0 auto;
      background: rgba(0, 0, 0, 0.5);
      backdrop-filter: blur(5px);
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 0 30px rgba(0, 255, 255, 0.3);
    }

    th, td {
      padding: 16px 20px;
      text-align: center;
    }

    th {
      background: #00bfff;
      color: #000;
      font-size: 18px;
      letter-spacing: 1px;
    }

    td {
      background: rgba(255, 255, 255, 0.1);
      font-size: 16px;
      border-bottom: 1px solid rgba(255, 255, 255, 0.2);
      transition: background 0.3s ease;
    }

    tr:hover td {
      background: rgba(0, 255, 255, 0.2);
    }

    tbody tr:last-child td {
      border-bottom: none;
    }
  </style>
</head>
<body>

  <h2>🏏 Second Inning Scorecard</h2>

  <table>
    <thead>
      <tr>
        <th>Player Name</th>
        <th>Runs</th>
        <th>Overs</th>
        <th>Wickets</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="player" items="${secondInningscore}">
        <tr>
          <td>${player.playerName}</td>
          <td>${player.totalRuns}</td>
          <td>${player.overs}</td>
          <td>${player.wicketsTaken}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

</body>
</html>
