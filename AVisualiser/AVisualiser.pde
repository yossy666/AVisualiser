import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import controlP5.*;

Minim minim;
AudioPlayer groove;

ControlP5 slider;
int vol;

void setup()
{
  size(1024, 768);

  minim = new Minim(this);
  groove = minim.loadFile("Louder.mp3", 1024);//1024 is no baffer
  groove.loop();

  slider = new ControlP5(this);
  slider.addSlider("vol")
    .setRange(0, 100)
    .setValue(50)
    .setPosition(400, 500)
    .setSize(300, 70)
    .setNumberOfTickMarks(101);
}

void draw()
{
  background(0);

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
  rect( 0, 0, groove.left.level()*width, 100 );
  rect( 0, 100, groove.right.level()*width, 100 );
}

void keyPressed()
{
  if (keyCode == ' ') {
    if (groove.isPlaying()) { //play-pause control
      groove.pause();
    } 
    else {
      groove.loop();
    }
  }
}
