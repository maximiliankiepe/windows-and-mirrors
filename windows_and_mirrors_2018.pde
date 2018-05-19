/**********************************************

  Windows and Mirrors
  
  A computer program that hides itself

  Maximilian Kiepe, 19 May 2018

**********************************************/

import java.awt.Robot;
import java.awt.AWTException;
import java.awt.Rectangle;

boolean flag;

PImage screenshot; 
 
void setup() {
  size(400,400);
  flag = false;
  noStroke();
  frame.removeNotify();
  //frame.setUndecorated(true); 
  //fullScreen();
}
void draw() {
  if (!flag) {
    surface.setLocation(100, 100);
    flag = true;
  }
  screenshot();
  image(screenshot,0,0,width,height);
} 
 
void screenshot() {
  try{
    Robot robot_Screenshot = new Robot();
    screenshot = new PImage(robot_Screenshot.createScreenCapture
    (new Rectangle(400,400,400,400)));
  }
  catch (AWTException e){ }
  //surface.setLocation(400, 0);
}