PImage[] imagenes = new PImage[6];
String[] textos = {
  "",
  "Layers of Fear es un viaje profundo y perturbador \n la mente de un artista atormentado.\nEste juego transforma la locura en arte y \nel miedo en belleza.",
  "La mansión, viva y cambiante, refleja su dolor, \nmientras el terror se construye con sutileza, \nsin monstruos, solo recuerdos. Más que un juego, \nes una experiencia emocional que deja huella.",
  "Una obra ideal para quienes buscan un terror que \nno solo asuste, sino que también emocione y \nhaga pensar.",
  "Es una experiencia sensorial \nque te envuelve lentamente, como una pesadilla \nhermosa de la que no querés despertar.",
  ""
};

int imagenActual = 0;
int tiempoCambio = 1000; // 1 seg = 1000mseg
int tiempoAnterior = 0;

//ANIMACION

float alphaTexto = 0;
float velocidadFade = 2.5;


void setup() {
  size(640, 480);
  imagenes[0] = loadImage("imagen1.jpg");
  imagenes[1] = loadImage("imagen2.jpg");
  imagenes[2] = loadImage("imagen3.jpg");
  imagenes[3] = loadImage("imagen4.jpg");
  imagenes[4] = loadImage("imagen5.jpg");
  imagenes[5] = loadImage("imagen6.jpg");
  tiempoAnterior = millis();
  textSize(26);
  textAlign (CENTER, TOP);
}

void draw() {
  background(0);
  image(imagenes[imagenActual], 0, 0, width, height);



  //ANIMACION FADE-IN

  if (alphaTexto < 255) {
    alphaTexto += velocidadFade;
    if (alphaTexto > 255) {
      alphaTexto = 255;
    }
  }

  fill (255, alphaTexto);
  text(textos[imagenActual], width/2, 170);

  //cambia la iamgen y hace que no se pase de largo
  if (millis() - tiempoAnterior > tiempoCambio && imagenActual < imagenes.length - 1) {
    imagenActual++;
    tiempoAnterior = millis();
    alphaTexto = 0;
  }

  if (imagenActual == imagenes.length - 1) {
    botonReiniciar();
  }
}

void botonReiniciar() {
  fill(0); //fondo
  rect(width/2-60, height-60, 120, 40, 10);
  fill(255); //letra
  stroke(255); //bordes
  textAlign(CENTER, CENTER);
  text("REINICIAR", width/2, height-40);
}

void mousePressed() {
  if (mouseX > width/2-60 && mouseX < width/2 -60+120 && mouseY > height-60 && mouseY < height-20) {


    //confi reiniciar
    imagenActual = 0;
    tiempoAnterior = millis();
    alphaTexto = 0;
  }
}
