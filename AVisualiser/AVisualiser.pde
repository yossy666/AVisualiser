import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import controlP5.*;

import processing.sound.*;


Minim minim;
AudioPlayer groove;
AudioOutput AudioOut;
AudioInput AudioIn;
AudioMetaData meta;


String scene = "play";//scenemode setting

int songnum;

File[] files;
SoundFile sound;

void setup()
{
  size(1024, 768);
  songlist(1);

}


void draw()
{
  background(12);
  stroke( 255 );
  
  if(scene == "play"){
    player();
  }
  
  else if (scene == "setting"){
    rect(100,100,100,100);
  }
}
