PImage photo;

void setup(){
   size(800,400);
   photo = loadImage("4687a926a04b8669b514cbddfe70809c.jpg");
}

void draw(){
   background(255); 
  image(photo, 400, 10);
  fill(0);
  textSize(16); 
  text("Posición del mouse: (" + mouseX + ", " + mouseY + ")", 10, 20);
  fill(203, 176, 154);
  ellipse (200, 150, 110, 150);
   fill(255); 
  line (239,132, 220,132);
  line (207, 132, 185,132);
  ellipse (195, 142, 20, 13);
  ellipse (229, 142, 20, 13);
  fill (5, 5, 5);
  ellipse (197, 140, 1, 1);
  ellipse (231, 140, 1, 1);
  line (214, 142, 220, 173);
  line (220, 173, 216, 174);
  line (221, 185, 210, 185);
  fill (203, 176, 154);
  line (150, 147, 136, 141);
  line (138,156, 136, 141);
  line (138, 156, 150, 170);
  line (140, 146, 149, 155);
  line (150, 147, 150, 170);
  rect (174, 214, 50,40);
  fill (225, 232, 237);
  rect (120, 251, 150, 20);
  rect (200, 272, 22 ,60);
  fill (236, 237, 17);
  rect (220, 272, 48, 60);
  fill (5,5,5);
  line (244, 289, 242, 334);
  fill (236, 237, 17);
  rect (120,271, 79, 61);
  fill (5,5,5);
  line (151, 288, 154, 331);
  fill(5,5,5);
  ellipse (161, 261, 20, 15);
  ellipse (245, 261, 20, 15);
   
   
   strokeWeight(2);
   fill (255);
   line (210,287, 211, 333);
   ellipse (335, 152, 80, 120);
    textSize(20);
     textAlign(334, 156 );
      fill(0);
      text("OK.",325 ,163);
}
