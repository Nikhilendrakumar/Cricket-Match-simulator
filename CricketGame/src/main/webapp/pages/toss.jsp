<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cricket Toss - RCB vs CSK</title>

    <!-- Orbitron Font -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Orbitron', sans-serif;
            background: url('https://wallpapercave.com/wp/wp3049846.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .toss-box {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 20px;
            text-align: center;
            max-width: 600px;
            width: 90%;
            box-shadow: 0 10px 30px rgba(0,0,0,0.5);
        }

        h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #00ffff; /* Aqua/Cyan for sporty digital vibe */
        }

        .cricket-icon {
            font-size: 50px;
            color: #f39c12;
            animation: glow 2s infinite alternate;
        }

        @keyframes glow {
            from { text-shadow: 0 0 10px #f39c12, 0 0 20px #f39c12; }
            to { text-shadow: 0 0 20px #f39c12, 0 0 40px #f39c12; }
        }

        .team-logos {
            display: flex;
            justify-content: space-around;
            align-items: center;
            margin: 20px 0;
        }

        .team-logos img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            border: 3px solid #fff;
            object-fit: cover;
        }

        .vs-text {
            font-size: 24px;
            font-weight: bold;
        }

        h3 {
            margin-top: 20px;
            font-size: 22px;
            color: #00ff99; /* Bright greenish highlight for toss result */
            text-shadow: 0 0 5px #00ff99;
        }

        form {
            margin-top: 20px;
        }

        button {
            padding: 12px 30px;
            font-size: 18px;
            background: linear-gradient(135deg, #00c3ff, #0072ff);
            color: #fff;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: bold;
            box-shadow: 0 4px 15px rgba(0, 114, 255, 0.4);
        }

        button:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(0, 114, 255, 0.6);
        }

        button:active {
            transform: scale(0.98);
        }

        @media(max-width: 600px) {
            .team-logos {
                flex-direction: column;
            }
            .vs-text {
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>

<div class="toss-box">
    <div class="cricket-icon">
        <i class="fas fa-baseball-ball"></i>
    </div>
    <h1>🏏 Match Toss</h1>

    <div class="team-logos">
        <img src="https://preview.redd.it/heres-something-for-all-of-you-v0-9yzmx8665dpc1.jpeg?width=640&crop=smart&auto=webp&s=0127618809f5341aee81a785ed8ef92464153cb3" alt="RCB Logo">
        <span class="vs-text">VS</span>
          <img src="data:image/jpeg;base64,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" alt="CSK Logo">
    </div>          

    <h3>${msg}</h3>

    <form action="/startmatch" method="get">
        <input type="hidden" name="tosswinner" value="${tosswinner}" />
        <input type="hidden" name="secondteam" value="${secondteam}" />
        <button type="submit">Start Match</button>
    </form>
</div>

</body>
</html>
