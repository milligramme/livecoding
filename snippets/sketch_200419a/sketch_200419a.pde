/**
 * oscP5sendreceive by andreas schlegel
 * example shows how to send and receive osc messages.
 * oscP5 website at http://www.sojamo.de/oscP5
 */
 
import oscP5.*;
import netP5.*;
  
OscP5 oscP5;
NetAddress remoteLocation;
PVector mouseLocation;
int r;

void setup() {
  size(400,200);
  frameRate(25);
  oscP5 = new OscP5(this,12000);
  
  remoteLocation = new NetAddress("127.0.0.1",12000);  
  mouseLocation = new PVector(0, 0);
  r = 100;

  frameRate(12);
  colorMode(HSB, 360, 100, 100);
  ellipseMode(CENTER);
  noStroke();
  background(0, 0, 0);  
}

void draw() {
  ellipse(mouseLocation.x, mouseLocation.y, r, r);
  if(frameCount % 100 == 0) {
    background(0, 0, 0);
  }    
}

void oscEvent(OscMessage msg) {
  
  if(msg.checkAddrPattern("/t") == true) {
    mouseLocation.x = width / 35 * msg.get(0).intValue();
    mouseLocation.y = height / 35 * msg.get(1).intValue();

    fill(360 / 35 * msg.get(2).intValue(), 50, 50);
  }
  
  
  if(msg.checkAddrPattern("/c") == true) {
    r = 100 / 35 * msg.get(0).intValue(); 
  }
}
