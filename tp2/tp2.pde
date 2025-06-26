PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage imagen6;

String texto1;
String texto2;
String texto3;
String texto4;
String texto5;
String texto6;

int imagenActual = 0;
int tiempoCambio = 2000; // 1 seg = 1000 mseg
int tiempoAnterior = 0;

//ANIMACION

float alphaTexto = 0;
float velocidadFade = 2.5;

void setup() {
  size(640, 480);

  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  imagen4 = loadImage("imagen4.jpg");
  imagen5 = loadImage("imagen5.jpg");
  imagen6 = loadImage("imagen6.jpg");

  texto1 = "";
  texto2 = "Layers of Fear es un viaje profundo y perturbador \na la mente de un artista atormentado.\nEste juego transforma la locura en arte y \nel miedo en belleza.";
  texto3 = "La mansión, viva y cambiante, refleja su dolor, \nmientras el terror se construye con sutileza, \nsin monstruos, solo recuerdos. Más que un juego, \nes una experiencia emocional que deja huella.";
  texto4 = "Una obra ideal para quienes buscan un terror que \nno solo asuste, sino que también emocione y \nhaga pensar.";
  texto5 = "Es una experiencia sensorial \nque te envuelve lentamente, como una pesadilla \nhermosa de la que no querés despertar.";
  texto6 = "";

  tiempoAnterior = millis();
  textSize(26);
  textAlign(CENTER, TOP);
}

void draw() {
  background(0);

  if (imagenActual == 0) {
    image(imagen1, 0, 0, width, height);
    text(texto1, width/2, 170);
  }
  if (imagenActual == 1) {
    image(imagen2, 0, 0, width, height);
    text(texto2, width/2, 170);
  }
  if (imagenActual == 2) {
    image(imagen3, 0, 0, width, height);
    text(texto3, width/2, 170);
  }
  if (imagenActual == 3) {
    image(imagen4, 0, 0, width, height);
    text(texto4, width/2, 170);
  }
  if (imagenActual == 4) {
    image(imagen5, 0, 0, width, height);
    text(texto5, width/2, 170);
  }
  if (imagenActual == 5) {
    image(imagen6, 0, 0, width, height);
    text(texto6, width/2, 170);
  }

  //ANIMACION FADE-IN
  if (alphaTexto < 255) {
    alphaTexto += velocidadFade;
    if (alphaTexto > 255) 
    alphaTexto = 255;
  }
  fill(255, alphaTexto);

  //cambia la iamgen y hace que no se pase de largo
  if (millis() - tiempoAnterior > tiempoCambio && imagenActual < 5) {
    imagenActual++;
    tiempoAnterior = millis();
    alphaTexto = 0;
  }

  if (imagenActual == 5) {
    botonReiniciar();
  }
}
//boton de reiniciar
void botonReiniciar() {
  fill(0); //fondo
  rect(width/2-60, height-60, 120, 40, 10);
  fill(255); //letra
  stroke(255); //bordes
  textAlign(CENTER, CENTER);
  text("REINICIAR", width/2, height-40);
}

void mousePressed() {
  if (mouseX > width/2-60 && mouseX < width/2 + 60 && mouseY > height-60 && mouseY < height-20) {
    
    
    //confi reiniciar
    imagenActual = 0;
    tiempoAnterior = millis();
    alphaTexto = 0;
  }
}
