  int set;

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
  if (key == '1') {
    groove.cue(groove.length()/10);
  }
  if (key == '2') {
    groove.cue(groove.length()/10*2);
  }
  if (key == '3') {
    groove.cue(groove.length()/10*3);
  }
  if (key == '4') {
    groove.cue(groove.length()/10*4);
  }
  if (key == '5') {
    groove.cue(groove.length()/10*5);
  }
  if (key == '6') {
    groove.cue(groove.length()/10*6);
  }
  if (key == '7') {
    groove.cue(groove.length()/10*7);
  }
  if (key == '8') {
    groove.cue(groove.length()/10*8);
  }
  if (key == '9') {
    groove.cue(groove.length()/10*9);
  }
  if (key == '0') {
    groove.cue(groove.length());
  }




  if (key == 'l') {
    if(set == 1){
      scene = "setting";
      set = 0;
    }
    else{
      scene = "play";
      set = 1;
    }
  }
}
