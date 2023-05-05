actualizaReloj()
JS
function actualizaReloj(){
momentoActual = new Date()
hora = momentoActual.getHours()
minuto = momentoActual.getMinutes() segundo = momentoActual.getSeconds()
if (hora < 10) hora = 0 + hora //030 !!!!
if (minuto < 10) minuto = "0" + minuto
if (segundo < 10) segundo = "0" + segundo
horaImprimible = hora + " : " + minuto + " : " + segundo
//document.title = horaImprimible
horaActual.innerHTML= horaImprimible
setTimeout("actualizaReloj()",1000)

}