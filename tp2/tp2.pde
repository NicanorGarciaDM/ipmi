//TP2
//Comision 5
//Nicanor Garcia 92711/2

PImage imagenTitulo, imagenPantalla1, imagenPantalla2, imagenFinal;
String titulo, texto1, texto2, texto3, texto4;
PFont fuente;
int pantalla, tiempo, animacionTitulo, animacionPantallaUno, animacionPantallaDos;

void setup() {
  size(640, 480);
  fuente = loadFont("OCRAExtended-48.vlw");
  pantalla = 0;
  tiempo = 0;
  animacionTitulo = 37;
  animacionPantallaUno = 350;
  animacionPantallaDos = 480;
  texto1 = "Trabajo Práctico 2\nQuantum Devil Saga\nYu Godai";
  texto2 = "Quantum Devil Saga es una novela escrita por Yu Godai.\nEn Junkyard, un mundo post-apocaliptico, seis tribus\ncon el poder de transformarse en demonios luchan por\nterritorios para así poder ascender al nirvana.";
  texto3 = "Está basado en el juego de PlayStation 2 Digital Devil Saga,\nen el cual la autora realizó el guión inicial.\nPor problemas de salud, tuvo que abandonar\nel proyecto, pero mantuvo el\ncontrato para publicar la\nnovela como ella lo imaginaba.";
  texto4 = "Reiniciar";
  imagenTitulo = loadImage("Titulo.png");
  imagenPantalla1 = loadImage("Pantalla1.jpg");
  imagenPantalla2 = loadImage("Pantalla2.jpg");
  imagenFinal = loadImage("Final.jpg");
  textFont(fuente);
}

void draw() {
  if (pantalla == 0) {
    background(0);
    image(imagenTitulo, 0, 0, 640, 480);
    text(texto1, 0, animacionTitulo);
    fill(100, 187, 74);
    animacionTitulo++;
  }
  if (tiempo < 500 && pantalla != 3) {
    tiempo++;
  }
  if (pantalla == 2 && animacionPantallaDos > 19) {
    tiempo--;
  }
  if (pantalla == 2 && animacionPantallaDos <= 19) {
    animacionPantallaDos++;
  }
  if (animacionTitulo >= 377) {
    animacionTitulo = 37;
  }
  if (animacionPantallaUno <= 254) {
    animacionPantallaUno++;
  }
  if (tiempo >= 500) {
    pantalla++;
    tiempo = 0;
  }
  if (pantalla == 1) {
    background(0);
    image(imagenPantalla1, 0, 0, 640, 480);
    textSize(18);
    text(texto2, 22, animacionPantallaUno);
    fill(238, 238, 228);
    animacionPantallaUno--;
  }
  if (pantalla == 2) {
    background(0);
    image(imagenPantalla2, 0, 0, 640, 480);
    textSize(12);
    text(texto3, animacionPantallaDos, 33);
    fill(6, 57, 112);
    animacionPantallaDos--;
  }
  if (pantalla == 3) {
    background(0);
    image(imagenFinal, 0, 0, 640, 480);
    circle(577, 44, 94);
    fill(#9c130f);
    circle(577, 44, 92);
    fill(255);
    text(texto4, 546, 92/2);
    fill(0);
  }
}
void mousePressed() {
  if (dist(577, 44, mouseX, mouseY) < 50) {
    pantalla = 0;
    tiempo = 0;
    animacionTitulo = 37;
    animacionPantallaUno = 350;
    animacionPantallaDos = 480;
    textSize(48);
  }
}
