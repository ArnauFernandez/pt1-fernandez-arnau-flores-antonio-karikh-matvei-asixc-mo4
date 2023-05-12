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
  var audio = new Audio('alarma.mp3');
  audio.play()
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
function toggleDarkMode() {
  var element = document.body;
  element.classList.toggle("dark-mode");
}

let options = [];

function setAlarm() {
  const alarmInput = document.getElementById("alarmTime");
  const alarmTime = alarmInput.value;

  if (alarmTime === "") {
    alert("Por favor, introduce una hora válida.");
    return;
  }

  const now = new Date();
  const alarm = new Date(now.toDateString() + " " + alarmTime);

  if (isNaN(alarm.getTime())) {
    alert("Formato de hora inválido. Utiliza el formato 'HH:MM'.");
    return;
  }

  const timeRemaining = alarm.getTime() - now.getTime()+1000;

  if (timeRemaining <= 0) {
    alert("Hora de alarma inválida. Asegúrate de que sea en el futuro.");
    return;
  }

  setTimeout(function() {
    audio.play()
    alert("vuela alto");
  }, timeRemaining);


}
function actualizaReloj(){
  momentoActual = new Date()
  hora = momentoActual.getHours()
  minuto = momentoActual.getMinutes() 
  segundo = momentoActual.getSeconds()
  if (hora < 10) hora = 0 + hora
  if (minuto < 10) minuto = "0" + minuto
  if (segundo < 10) segundo = "0" + segundo
  horaImprimible = hora + " : " + minuto + " : " + segundo
  horaActual.innerHTML= horaImprimible
  setTimeout("actualizaReloj()",1000)
  }
  let myAudio = new Audio();
  function playAudio() {
    console.log('The audio will start playing now.')
    myAudio.src = 'alarma.mp3';
    myAudio.autoplay = true;
    myAudio.loop = true;
   }
  function pauseAudio(){
    console.log('Now the audio will pause')
   myAudio.pause();
   }
   let myAudio2 = new Audio();
   function playAudio() {
     console.log('The audio will start playing now.')
     myAudio.src = 'ruleta.mp3';
     myAudio.autoplay = true;
     myAudio.loop = true;
    }
   function pauseAudio(){
     console.log('Now the audio will pause')
    myAudio.pause();
    }