PImage img; //<>//
void setup(){
  size (800,400);
  img =loadImage("Pintura.png");
}
void draw(){
  image (img,0,0,400,400);
  println("x:");
  println(mouseX);
  println("y:");
  println(mouseY);
 
  
  fill(47, 93, 134);
  rect(399, 0, 400, 400);
  
  fill(10, 18, 90);
  rect(454, 57, 280, 300);
 
  fill(44, 20, 4);
  rect(500, 114, 180, 200);
  
  fill(164, 186, 174);
  rect(420, 21, 140, 140);
  rect(586, 22, 180, 120);
  rect(430, 180, 160, 188);
  rect(600, 189, 170, 194);
  
  fill(216, 209, 157);
  rect(500, 114, 60, 48);
  rect(586, 114, 96, 28);
  rect(500, 181, 90, 133);
  rect(600, 189, 80, 125);
   
   fill(10, 18, 90);
  ellipse(590, 196,130,130);

}
