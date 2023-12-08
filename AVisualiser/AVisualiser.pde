import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import controlP5.*;

//import

Minim minim;
AudioPlayer groove;
AudioOutput AudioOut;
AudioInput AudioIn;

boolean isMode = true;//true = playmode,false = soundcard inputmode


ControlP5 slider;
int vol;

void setup()
{
  size(1024, 768);

  minim = new Minim(this);
  groove = minim.loadFile("Louder.mp3", 1024);//put this your song

  slider = new ControlP5(this);
  slider.addSlider("VOLUME")
    .setRange(0, 100)
    .setValue(50)
    .setPosition(350, 668)
    .setSize(300, 70)
    .setNumberOfTickMarks(101);
}

void draw()
{
  background(12);

  stroke( 255 );

  // draw the waveforms
  // the values returned by left.get() and right.get() will be between -1 and 1,
  // so we need to scale them up to see the waveform
  // note that if the file is MONO, left.get() and right.get() will return the same value
  for (int i = 0; i < groove.bufferSize() -1; i++)
  {
    float x1 = map( i, 0, groove.bufferSize(), 0, width );
    float x2 = map( i+1, 0, groove.bufferSize(), 0, width );
    line( x1, 50 + groove.left.get(i)*50, x2, 50 + groove.left.get(i+1)*50 );
    line( x1, 150 + groove.right.get(i)*50, x2, 150 + groove.right.get(i+1)*50 );
  }

  noStroke();
  fill( 255, 128 );

  // the value returned by the level method is the RMS (root-mean-square)
  // value of the current buffer of audio.
  // see: http://en.wikipedia.org/wiki/Root_mean_square
  rect( 140, 768, 100, 100-groove.left.level()*height);
  rect( 40, 768, 100, 100-groove.right.level()*height);

  float posx = map(groove.position(), 0, groove.length(), 0, width);
  stroke(0, 200, 0);
  line(posx, 0, posx, 200);
}

void keyPressed()
{
  if (keyCode == ' ') {
    if (groove.isPlaying()) { //play-pause control
      groove.pause();
    } else {
      groove.loop();
    }
  }

 if (key == 's') {
   groove.pause();
   groove.cue(0);
}
  if (key == '1'){
    groove.cue(groove.length()/10);
}
  if (key == '2'){
    groove.cue(groove.length()/10*2);
}
  if (key == '3'){
    groove.cue(groove.length()/10*3);
}
  if (key == '4'){
    groove.cue(groove.length()/10*4);
}
  if (key == '5'){
    groove.cue(groove.length()/10*5);
}
  if (key == '6'){
    groove.cue(groove.length()/10*6);
}
  if (key == '7'){
    groove.cue(groove.length()/10*7);
}
  if (key == '8'){
    groove.cue(groove.length()/10*8);
}
  if (key == '9'){
    groove.cue(groove.length()/10*9);
}
  if (key == '0'){
    groove.cue(groove.length());
}
}
