import processing.pdf.*;

int w = 100;
int h = 250;

void setup(){
 size(600,600); 
 noLoop();
 smooth();
 beginRecord(PDF, "icecone.pdf");
 background(255);
 noStroke();
 
}

void draw(){
 
  for (int w = 200; w>=0; w-=10) {
    if (w % 20 == 0) {
      fill(0);
    } else {
      fill (255);
    }
    ellipse(width/2, height/2-50, w, 200);
  }
  
  for (int w = 100; w>=0; w-=10) {
    if (w % 20 == 0) {
      fill(0);
    } else {
      fill (255);
    }
    triangle(width/2-w, height/2, width/2, height/2+h, width/2+w, height/2);
  }
  endRecord();
  
}


