<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">     
  <title>Champions Victory!</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@600;800&display=swap" rel="stylesheet">
  <style>
  body {
    margin: 0;
    height: 100vh;
    background: radial-gradient(circle at center, #001f3f, #000);
    overflow: hidden;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    font-family: 'Orbitron', sans-serif;
    color: #fff;
    position: relative;
  }

  h2 {
    font-size: 70px;
    background: linear-gradient(90deg, #FFD700, #FF8C00, #FFD700);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    animation: shine 4s linear infinite;
    text-transform: uppercase;
    letter-spacing: 4px;
  }

  h3 {
    font-size: 36px;
    margin: 10px 0;
    text-shadow: 0 0 10px #0ff;
  }

  @keyframes shine {
    0% { background-position: 0%; }
    100% { background-position: 200%; }
  }

.trophy {
  max-width: 15vw;   /* Big & responsive */
  height: auto;
  margin-bottom: 30px;
  filter: drop-shadow(0 0 20px #FFD700);
  /* Removed: animation */
}


  @keyframes rotate {
    0% { transform: rotateY(0deg); }
    100% { transform: rotateY(360deg); }
  }

  .confetti {
    position: absolute;
    width: 10px;
    height: 10px;
    background-color: #ff0;
    animation: confetti-fall 6s linear infinite;
    border-radius: 50%;
  }

  @keyframes confetti-fall {
    0% {
      transform: translateY(-10vh) rotate(0deg);
      opacity: 1;
    }
    100% {
      transform: translateY(110vh) rotate(720deg);
      opacity: 0;
    }
  }

  .firework {
    position: absolute;
    width: 6px;
    height: 6px;
    background: #fff;
    border-radius: 50%;
    animation: firework 1s ease-out forwards;
  }

  @keyframes firework {
    from { transform: scale(0); opacity: 1; }
    to { transform: scale(5); opacity: 0; }
  }
</style>
</head>
<body>

  <!-- 🏆 Trophy Icon -->
  <img src="/images/trophy.png" alt="Trophy" class="trophy" />

  <h2>Game Completed!</h2>
  <h3>${totalscorercb}</h3>
  <h3>${totalscorecsk}</h3>
  <h3>${results}</h3>

  <script>
    // Confetti shower
    const colors = ['#ff0', '#0ff', '#f0f', '#0f0', '#f00', '#00f'];
    for (let i = 0; i < 150; i++) {
      const confetti = document.createElement('div');
      confetti.classList.add('confetti');
      confetti.style.left = Math.random() * 100 + 'vw';
      confetti.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
      confetti.style.animationDuration = (Math.random() * 3 + 3) + 's';
      confetti.style.opacity = Math.random();
      document.body.appendChild(confetti);
    }

    // Fireworks effect
    function createFirework() {
      const firework = document.createElement('div');
      firework.classList.add('firework');
      firework.style.left = Math.random() * window.innerWidth + 'px';
      firework.style.top = Math.random() * (window.innerHeight / 2) + 'px';
      firework.style.background = colors[Math.floor(Math.random() * colors.length)];
      document.body.appendChild(firework);
      setTimeout(() => firework.remove(), 1000);
    }
    setInterval(createFirework, 500);

    // OPTIONAL: Play applause sound
    // let audio = new Audio('/sounds/applause.mp3');
    // audio.play();
  </script>

</body>
</html>
