/**
 * oscP5sendreceive by andreas schlegel
 * example shows how to send and receive osc messages.
 * oscP5 website at http://www.sojamo.de/oscP5
 */

import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress remoteLocation;
int r;

void setup() {
  size(400, 200);
  frameRate(25);
  oscP5 = new OscP5(this, 12000);

  remoteLocation = new NetAddress("127.0.0.1", 12000);  

  r = 20;

  frameRate(12);
  colorMode(HSB, 360, 100, 100);
  ellipseMode(CENTER);
  noStroke();
  background(0, 0, 0);
}

void draw() {
  background(0, 0, 0);
  ellipse(width/2, height/2, r, r);
}

void oscEvent(OscMessage msg) {
  // set color and size
  if (msg.checkAddrPattern("/t") == true) {
    r = 10 * msg.get(1).intValue();

    fill((msg.get(2).intValue() - 10) * 45, 50, 100);
  }
}
