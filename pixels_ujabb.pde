PImage img;
int pointillize = 10;
String filenames[];

void setup() {
  size(700, 700);
  noStroke();

  File dir = new File(dataPath(""));  //Sketch alatt lévő data könyvtár path-t kell töltenie
  filenames = dir.list();
//  tesztelni a filenames[] tömb tartalmát
//  for (int i = 0; i < filenames.length; i++) {
//    println(filenames[i]);
//  }

  img = loadImage(filenames[int(random(filenames.length))]); 
  img.resize(700, 700);
  background(0);
  // smooth();  -- nem kell a referencia szerint
}

void draw() {
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  frameRate(400);
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
pointillize = (mouseX+mouseY)/65;

  
  fill(r, g, b, 250);
  ellipse(x, y, pointillize, pointillize);
}

void mouseClicked() {
img = loadImage(filenames[int(random(filenames.length))]); 
  img.resize(700,700);
  background(0);
}