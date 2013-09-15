/**
 * IP3: How to play a video (.mov) and sound.
 * Modified from the Processing example: Loop. 
 * 
 * cer@create.aau.dk, for MED1: IP  
 * September, 2013
 */

import processing.video.*;

Movie movie;
Movie sound;

void setup() {
  size(640, 360);
  background(0);
  // Load and play the video in a loop
  movie = new Movie(this, "transit.mov");
  sound = new Movie(this, "atmos1.wav");
  movie.loop();
  sound.loop();
}

//void movieEvent(Movie m) {
//  m.read();
//}

void draw() {
  if (movie.available() == true) {
  movie.read(); 
  }
  image(movie, 0, 0, width, height);
}

void mousePressed () {
  movie.stop();
  sound.stop();
  
  movie.play();
  sound.play();
}
