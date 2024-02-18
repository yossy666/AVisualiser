import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import processing.sound.*;

import java.io.*;
import javax.swing.*;

import controlP5.*;

Minim minim;
AudioPlayer groove;
AudioOutput AudioOut;
AudioInput AudioIn;
AudioMetaData meta;


int songnum;

File[] files;
SoundFile sound;

int r, g, b;
int wr,wg,wb,wa;
float Cvol;



void setup()
{
  size(1024, 768);


  loadfile();
  setting();
  
}


void draw()
{
  background(r,g,b);
  stroke(wr,wg,wb,wa);
  
  player();
  
  
 
 
}
