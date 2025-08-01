<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Cricket Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Orbitron font for sporty digital feel -->
<link
	href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&display=swap"
	rel="stylesheet">
<!-- Font Awesome for cricket icon -->
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>

<style>
body {
	margin: 0;
	padding: 0;
	background: radial-gradient(circle at top, #1e3c72, #2a5298);
	font-family: 'Orbitron', sans-serif;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	color: #fff;
}

.form-container {
	background: rgba(255, 255, 255, 0.05);
	padding: 40px 35px;
	border-radius: 16px;
	box-shadow: 0 20px 40px rgba(0, 255, 255, 0.15);
	backdrop-filter: blur(12px);
	-webkit-backdrop-filter: blur(12px);
	text-align: center;
	max-width: 400px;
	width: 100%;
	border: 1px solid rgba(255, 255, 255, 0.1);
}

.form-container:hover {
	transform: translateY(-5px) scale(1.02);
	transition: transform 0.3s ease;
}

.cricket-icon {
	font-size: 60px;
	color: #00ffff;
	margin-bottom: 15px;
	text-shadow: 0 0 20px #00ffff;
}

h2 {
	margin: 0 0 25px;
	font-size: 30px;
	letter-spacing: 1px;
	text-shadow: 0 0 10px #00ffff;
}

label {
	display: block;
	text-align: left;
	font-size: 14px;
	margin-bottom: 5px;
	font-weight: 600;
	color: #ffffffcc;
}

input[type="text"] {
	width: 100%;
	padding: 12px 15px;
	margin-bottom: 20px;
	border-radius: 8px;
	border: none;
	background: rgba(255, 255, 255, 0.1);
	color: #fff;
	outline: none;
	font-size: 15px;
	backdrop-filter: blur(4px);
}

.submit-btn {
    width: 100%;
    background: linear-gradient(135deg, #00c3ff, #0072ff);
    color: #fff;
    font-size: 16px;
    padding: 14px;
    border: none;
    border-radius: 50px;
    cursor: pointer;
    transition: all 0.3s ease;
    font-weight: bold;
    letter-spacing: 1px;
    text-transform: uppercase;
    box-shadow: 0 4px 15px rgba(0, 114, 255, 0.4);
}

.submit-btn:hover {
    background: linear-gradient(135deg, #009ee3, #005ecb);
    transform: translateY(-3px);
    box-shadow: 0 8px 25px rgba(0, 114, 255, 0.6);
}

.submit-btn:active {
    transform: scale(0.98);
}


.back-btn {
	margin-top: 25px;
	text-decoration: none;
	display: inline-block;
	background: linear-gradient(135deg, #ff4b2b, #ff416c);
	color: #fff;
	padding: 12px 30px;
	border-radius: 50px;
	font-weight: bold;
	font-size: 15px;
	letter-spacing: 1px;
	box-shadow: 0 4px 15px rgba(255, 65, 108, 0.4);
	transition: all 0.3s ease;
}

.back-btn:hover {
	background: linear-gradient(135deg, #ff1c0b, #ff416c);
	box-shadow: 0 8px 25px rgba(255, 65, 108, 0.6);
	transform: translateY(-3px);
}

.back-btn:active {
	transform: scale(0.98);
}

h3 {
	margin-top: 20px;
	color: #00ff99;
	text-shadow: 0 0 5px #00ff99;
	font-weight: 600;
}
</style>
</head>

<body>

	<div class="form-container">
		<div class="cricket-icon">
			<i class="fas fa-baseball-ball"></i>
		</div>
		<h2>🏏 Cricket Registration</h2>
		<form action="/savePlayer" method="post">
			<label for="playerName">Player Name</label> <input type="text"
				id="playerName" name="playerName" required> <label
				for="teamName">Team Name</label> <input type="text" id="teamName"
				name="teamName" required>

			<button type="submit" class="submit-btn">Register</button>
		</form>
	</div>

	<a href="/welcome" class="back-btn"> Back</a>

	<h3>${msg}</h3>

</body>
</html>
