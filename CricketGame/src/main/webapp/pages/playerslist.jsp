<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team 1 Innings</title>
<style>
  table {
    border-collapse: collapse;
    width: 80%;
  }
  th, td {
    border: 1px solid #444;
    padding: 8px 12px;
    text-align: left;
  }
  th {
    background-color: #ddd;
  }
</style>
</head>
<body>

<h2 style="margin-left: 40%;">Team 1 Innings - Player Details</h2>
<table style="margin-left: 11%;">
  <thead>
    <tr>
      <th>ID</th>
      <th>Player Name</th>
      <th>Total Runs</th>
      <th>Overs</th>
      <th>Wickets Taken</th>
      <th>Team Name</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="player" items="${team1Innings}">
      <tr>
        <td>${player.id}</td>
        <td>${player.playerName}</td>
        <td>${player.totalRuns}</td>
        <td>${player.overs}</td>
        <td>${player.wicketsTaken}</td>
        <td>${player.teamName}</td>
      </tr>
    </c:forEach>
  </tbody>
</table>
<br><br>

<Button type="submit" value="submit" style="margin-left: 45%;">2nd Innings</Button>

</body>
</html>
