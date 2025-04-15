

PImage anteojos;


void setup () {
size(800,400);
background(122,107,88);
ellipseMode(CENTER);

//marco del vidrio 
 fill(234,234,234,85);
 stroke(222, 184, 135);
 strokeWeight(3);
 rect(40+400, 145, 130, 120, 60, 57, 250,100);
 rect(224+400, 145, 130, 120, 57, 60, 100,250);
 
 
anteojos = loadImage ("misAnteojos.png");


}


void draw() {
  image(anteojos,0,0,400,400);
  
  //DIBUJO

 //patas
 fill(198,191,174);
 stroke(150);
 strokeWeight(1);
 rect(32+400,172,250,7);
 rect(112+400,170,250,7);
 
 //soporte der
 fill(41,41,40);
 stroke(41,41,40);
 line(682, 172, 770, 231);
 line(682, 180, 760, 247);
 arc(764, 239, 20, 17,-1,2);
 //soporte izq
 line(512, 171, 420, 244);
 line(512, 177, 430, 260);
 arc(427,251, 20, 17,1,4);
 
//apoya nariz izq
 pushMatrix();
 fill(232,231,211,70);
 stroke(232,231,211,70);
circle(572,202,10);
 fill(185,183,142,80);
 stroke(185,183,142,80);
 translate(576,206);
 rotate(radians(45));
 ellipse(0,0,10,30);
 popMatrix();
 
 //apoya narix der
 pushMatrix();
 fill(232,231,211,70);
 circle(623,204,10);
 fill(185,183,142,80);
 stroke(185,183,142,80);
 translate(618,208);
 rotate(radians(155));
 ellipse(0,0,10,30);
 popMatrix();
 
  //soporte patitas
 fill(175,175,170);
 stroke(175,175,170);
 rect(32+400,170,15,9);
 rect(347+400,170,15,9);
 
  //arco nariz
  noFill();
  stroke(229,214,188);
 strokeWeight( 3 );
arc(197+400, 180, 70, 45,3.5,5.8);
 
 
 // soporte oreja (parte oscura)
 pushMatrix();
 fill(41,41,40);
 stroke(41,41,40);
 quad(422,243,512,171,512,180,431,258);
 popMatrix();
 
 pushMatrix();
 fill(41,41,40);
 stroke(41,41,40);
 quad(682,172,768,233,761,244,683,180);
 popMatrix();
 
 
  //marco del vidrio
 noFill();
 stroke(189,171,138);
 strokeWeight(3);
 rect(40+400, 145, 130, 120, 60, 57, 250,100);
 rect(224+400, 145, 130, 120, 57, 60, 100,250);
 
 
 
 //liena divisoria
  stroke(0,0,0);
  strokeWeight(1);
 line(400,0,400,400); 



println(mouseX + "/" + mouseY);

}
