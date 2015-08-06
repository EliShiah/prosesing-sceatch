import ddf.minim.*;
int xpos=400;
int ypos=300;
int faster=8;
int FASTER=8;
PImage backgroundImage;
Minim minim;
AudioSample sound;

void setup(){
size(800,800);
backgroundImage = loadImage("images.jpg");
minim = new Minim (this); 
sound = minim.loadSample("pong.wav", 128);
 }
 
void draw(){
ypos=ypos+FASTER;
  xpos=xpos+faster;
 rect(400, 10, 5, 5);
 image(backgroundImage, 0, 0,800,800); 
ellipse (xpos,ypos,20,20);
rect(mouseX, 757, 100, 30);
fill (85,204,85);
stroke(0,0,0,0);
if(xpos>=800)
{sound.trigger();  
faster=-faster;
}else if(xpos<=0){
sound.trigger();  
faster=-faster;
}
if(ypos<=0){
FASTER=-FASTER;
sound.trigger();  }
else if(ypos>=800){sound.trigger();  
FASTER=-FASTER;}
if(intersects(xpos,ypos,mouseX,757,100)){
  FASTER=-FASTER;
}

}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}

