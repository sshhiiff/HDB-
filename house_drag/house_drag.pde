PFont f;
int x = 200;
int y = 250;
int x1 = 300;
int y1 = 10;
int x2 = 400;
int y2 = 100;
int x3 = 50;
int y3 = 400;
float sz1 = random(20, 240);
int sz2 = 250;
float sz3 = random(20, 230);
float sz4 = random(80, 200);

void setup() {
  size(600, 600, P2D);
  f = createFont("Arial", 100, true);
}

void draw() {


  PImage img = loadImage("face2.jpg");
  PImage img2 = loadImage("wall.jpg");
  PImage img3 = loadImage("cloud.jpeg");
  background(255, 220, 160);

  img3.resize(600, 300);
  image(img3, 0, 0);
  //textFont(f,50);                  
  //fill(255);                          
  //text("house",15,50);

  // textFont(f,50);                  
  //fill(255);                          
  //text("02",530,580);

  //noStroke();



  //_____________________________brickwall___________________________________
  fill(0, 200, 0);
  if (dist(x1, y1, mouseX, mouseY) < sz2/2) {
    if (mousePressed) {
      x1 = mouseX;
      y1 = mouseY;
      x = x;
      y = y;
    }
  }
  push();
  //rect(x1,y1,sz2,sz2);

  img2.resize(sz2, sz2);
  tint(100, 255, 0);
  image(img2, x1, y1);
  pop();

  //_____________________window_______________________
  fill(255, 255, 0);
  if (dist(x, y, mouseX, mouseY) < sz1/2) {
    if (mousePressed) {
      x = mouseX;
      y = mouseY;
      x1 = x1;
      y1 = y1;
    }
  }
  push();
  stroke(200, 0, 100);
  strokeWeight(15);
  rect(x, y, sz1, sz4);
  noFill();
  rect(x, y, sz1/2, sz4);
  rect(x, y, sz1, sz4/2);
  pop();

  //_________________________door____________________________
  fill(0, 0, 200);
  if (dist(x2, y2, mouseX, mouseY) < sz3/2) {
    if (mousePressed) {
      x2 = mouseX;
      y2 = mouseY;
      x = x;
      y = y;
    }
  }
  push();
  noStroke();
  rect(x2, y2, sz3, sz1);
  fill(0, 200, 200);
  ellipse(x2+10, y2+50, 10, 10);
  pop();


  //____________________________roof______________________________
  fill(100, 0, 255);
  if (dist(x2, y2, mouseX, mouseY) < sz3/2) {
    if (mousePressed) {
      x3 = mouseX;
      y3 = mouseY;
      x = x;
      y = y;
    }
  }
  push();
  noStroke();
  //triangle(x3,y3,x,y,x1,y1);
  beginShape();
  texture(img);

  vertex (x3, y3, x3, y3);
  vertex (x, y, y, 0);
  vertex (x1, y1, x1, y1);
  endShape();
  pop();
  //saveFrame("output2/house2_####.png");
  //filter(THRESHOLD);
}

void keyPressed() {
  saveFrame("output/house_var_###.png");
}
