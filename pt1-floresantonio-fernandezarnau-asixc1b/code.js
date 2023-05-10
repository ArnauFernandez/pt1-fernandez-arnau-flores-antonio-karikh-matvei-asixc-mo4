const canvas = document.getElementById('rouletteCanvas');
const ctx = canvas.getContext('2d');
const spinButton = document.getElementById('spinButton');
let names = [];

fetch('names.txt')
  .then(response => response.text())
  .then(data => {
    names = data.split('\n').filter(name => name.trim() !== '');
    drawRoulette();
  });

function drawRoulette(rotation = 0) {
  const numSegments = names.length;
  const segmentSize = 2 * Math.PI / numSegments;
  const radius = Math.min(canvas.width, canvas.height) / 2;

  ctx.clearRect(0, 0, canvas.width, canvas.height);

  for (let i = 0; i < numSegments; i++) {
    ctx.beginPath();
    ctx.moveTo(canvas.width / 2, canvas.height / 2);
    ctx.arc(
      canvas.width / 2,
      canvas.height / 2,
      radius,
      i * segmentSize + rotation,
      (i + 1) * segmentSize + rotation
    );
    ctx.closePath();

    ctx.fillStyle = i % 2 === 0 ? '#9cf' : '#39f';
    ctx.fill();

    ctx.save();
    ctx.translate(canvas.width / 2, canvas.height / 2);
    ctx.rotate((i + 0.5) * segmentSize + rotation);
    ctx.fillStyle = '#000';
    ctx.font = '16px sans-serif';
    ctx.fillText(names[i], radius / 2, 0);
    ctx.restore();
  }
}

spinButton.addEventListener('click', () => {
  const targetRotation = Math.random() * 2 * Math.PI;
  const numSpins = 10;
  const totalTime = 5000;
  let startTime;

function spin(timestamp) {
  if (!startTime) startTime = timestamp;
  const elapsed = timestamp - startTime;
  const progress = elapsed / totalTime;
  const currentRotation = progress * (numSpins * 2 * Math.PI + targetRotation);

  drawRoulette(currentRotation);

  if (progress < 1) {
    requestAnimationFrame(spin);
  } else {
    const numSegments = names.length;
    const segmentSize = 2 * Math.PI / numSegments;
    const winningSegmentIndex = Math.floor((currentRotation % (2 * Math.PI)) / segmentSize);
    const winner = names[winningSegmentIndex];
    alert(`¡El ganador es ${winner}!`);
  }
}
  requestAnimationFrame(spin);
});