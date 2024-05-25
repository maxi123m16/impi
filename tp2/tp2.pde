PImage img1, img2, img3;
float posX, posY;
int estado;

float opacidadTexto = 255;


PFont miFuente;


int contador;

String texto1, texto2, texto3;



void setup() {
  size(640, 480);
  img1 = loadImage("EumJOZQWYAIYj5d.png");
  img2 = loadImage("EwKNWFRXIAA94V4.png");
  img3 = loadImage("EwTl2QdWYAITC4Q.jpg");


  texto1 = " CryptoPunk #6965, por Larva Labs";
  texto2 = "CryptoPunk #7804, por Larva Labs";
  texto3 = "Auction Winner Picks Name, por SSX3LAU";

  
  miFuente = loadFont("data/Garamond-Bold-48.vlw");
 
  textFont( miFuente );
  textAlign(LEFT);

  
  estado = 1;
  contador = 0;
  posX = 10;
  
}

void draw() {
  println("estado="+estado);
  if (estado == 1) {
    image(img1, 0, 0, width, height);
     if ( mouseX>250 && mouseX<250+150
      && mouseY >170 && mouseY<170+80 ) {
      fill(0, 255, 0);
    } else {
      fill(200);
    }                                                         
    rect( 250, 170, 150, 80);
    fill(0);
    textSize(20);
    text("iniciar",290,215);
  }    
  
  if ( estado == 2 ) {
    posY=320;
    image( img1, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto1, posX, posY,  600, 200);
    contador++;
     if ( contador>=180 ) {
      
      estado++;
      contador = 0;
    }
  } else if ( estado == 3 ) {
    posY=320;
    image( img1, 0, 0, width, height);
    fill(255, opacidadTexto);
    textSize( map(opacidadTexto, 255, 0, 48, 0 ) );
    text ( texto1, posX, posY, 600, 200);

    opacidadTexto-=3;
    if (opacidadTexto<=0) {
      
      estado = 4;
      contador = 0;
      posX = 20;
      posY = 320;
      opacidadTexto = 255;
    }
  } else if ( estado == 4 ) {

    image( img2, 0, 0, width, height);
    fill(255,0,0);
    textSize(48);
    text ( texto2, posX, posY, 600, 200);

    
    contador++;
    if ( contador>=120 ) {
    
      estado++;
      contador = 0;
    }
  } else if ( estado == 5) {
    image( img2, 0, 0, width, height);
    fill(255,0,0);
    textSize(48);
    text ( texto2, posX, posY, 600, 200);

    posY+=5;
    if (posY>=height) {
    
      estado = 6;
      contador = 0;
      posX = 20;
      posY = height;
    }
  } else if ( estado == 6 ) {
    
     
    image( img3, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto3, posX, posY, 600, 200);
    posY-=3;
    
    if ( posY<=320 ) {
     
      estado++;
      contador = 0;
      posY=320;
    }
    }
    else if (estado== 7){
      image( img3, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto3, posX, posY, 600, 200);
    contador++;
    if (contador>=60){
      estado++;
    }
    }
    else if ( estado == 8 ) {
   
    image( img3, 0, 0, width, height);
    fill(255);
    textSize(48);
    text ( texto3, posX, posY, 600, 200);

    posY-=5;
    if (posY<=0) {
      
      estado = 9;
      contador = 0;
      posX = 20;
      posY = 320;
      }
      
    }
    else if(estado==9){
    
    
    image(img3,0,0,width,height);
    if ( mouseX>250 && mouseX<250+150
      && mouseY >170 && mouseY<170+80 ) {
      fill(0, 255, 0);
    } else {
      fill(200);
    }
    rect( 250, 170, 150, 80);
    fill(0);
    textSize(20);
    text("reiniciar",290,215);
  }  
   
  
}
void mousePressed() {
  if (estado==1){ 
      if ( mouseX >250 && mouseX<250+150
      && mouseY >170 && mouseY<170+80 ) {
      estado = 2;
    } 
    } 
  else if ( estado==9) {
    if ( mouseX >250 && mouseX<250+150
      && mouseY >170 && mouseY<170+80 ) {
      estado = 2;
    }
  } else {
    estado++;
    contador = 0;
    posX = 20;
  }
}
