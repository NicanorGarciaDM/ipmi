PImage imagenOptica;

void setup() {
  size(800, 400);
  
  imagenOptica = loadImage("imagen_tp3.jpg");
}

void draw() {
  background(255);
  noStroke();
  image(imagenOptica, 0, 0);
  imagenOptica.resize(400, 400);
  
  fill(#1a1a1a);
  rect(400, 0, 400, 400);
  
  int[][] vertices = {
    {442, 389, 791, 353, 755, 7, 407, 44},
    {491, 378, 776, 304, 701, 20, 418, 93},
    {544, 356, 754, 250, 647, 41, 439, 147},
    {596, 319, 714, 195, 591, 76, 473, 201},
    {626, 281, 675, 168, 561, 116, 509, 229},
    {634, 249, 643, 159, 552, 149, 542, 238},
    {570, 234, 630, 219, 614, 162, 555, 176},
    {597, 224, 619, 194, 590, 172, 566, 201},
    {600, 212, 608, 188, 585, 181, 576, 203},
    {584, 204, 600, 203, 600, 189, 584, 189},
  };
  
  if (keyPressed) {
    cambiarColores(vertices);
  }
  if (mousePressed) {
    println(mouseX, mouseY);
  }
  
  float d = calcularDistancia(0, 0, 100, 100);
  println("Distancia: " + d);
}

void cambiarColores(int[][] vertices) {
  for (int i = 0; i < vertices.length; i++) {
    for (int j = 0; j < vertices[i].length; j += 2) {
      fill(random(255), random(255), random(255));
      ellipse(vertices[i][j], vertices[i][j+1], 10, 10);
    }
    fill(random(255), random(255), random(255));
    quad(vertices[i][0], vertices[i][1], vertices[i][2], vertices[i][3], vertices[i][4], vertices[i][5], vertices[i][6], vertices[i][7]);
  }
}

float calcularDistancia(float x1, float y1, float x2, float y2) {
  return dist(x1, y1, x2, y2);
}

void keyPressed() {
  if (key == 'r') {
    imagenOptica = loadImage("imagen_tp3.jpg");
  }
}
