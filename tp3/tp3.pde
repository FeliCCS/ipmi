PImage imagen;
float espacio = 32;
boolean modoColor = false;


// Felipe Ceniceros  94211/6
// COMISON 2 
// Profe  Matias (crack)


// https://youtu.be/77cQBqb4Z4E



void setup() {
  size(800, 400);
  imagen = loadImage("referencia.jpg");
}


void draw() {
  background(255);

 
  image(imagen, 0, 0, width/2, height);    

 
  dibujosCirculos(400, 0, width/2, height);   //no dev
}


void dibujosCirculos(float x, float y, float ancho, float alto) {  //dos ciclos for anidados
  for (float i = x; i < x + ancho; i += espacio) {  //columnas
 for (float j = y; j < y + alto; j += espacio) {    //filas
      
      float distancia = dist(mouseX, mouseY, i, j);    // dev
      float tamaño = calcularTamaño(distancia);       
      
      if (modoColor) {
        fill(random(255),random(255),random(255));
      } else {                                 
        fill(0); 
      }                                         
                                                   
       
      noStroke();   
      ellipse(i, j, tamaño, tamaño);
    }
  }
}


float calcularTamaño(float d) {        //dev                        
  return map(d, 50, 500, espacio, -4);   //tamaño de los circulos
   
}




void keyPressed() {         
  if (key == 'c') {   //activo el modo random 
    modoColor = !modoColor;
  }
  if (key == 'r') {   //RESET
    espacio = 32;
    modoColor = false;
  }
}





void mousePressed() {   //Agrando los circulos
  if (mouseX > width/2) {
  espacio = random(10, 40);
  }
}
