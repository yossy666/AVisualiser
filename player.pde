void player() {
  // draw the waveforms 0,0 ~ 200,768
  for (int i = 0; i < groove.bufferSize() -1; i++)
  {
    float x1 = map( i, 0, groove.bufferSize(), 0, width );
    float x2 = map( i+1, 0, groove.bufferSize(), 0, width );
    line( x1, 50 + groove.left.get(i)*50, x2, 50 + groove.left.get(i+1)*50 );
    line( x1, 150 + groove.right.get(i)*50, x2, 150 + groove.right.get(i+1)*50 );
    
    
  }

  noStroke();
  fill(wr,wg,wb,wa);

  // the value returned by the level method is the RMS (root-mean-square)
  // value of the current buffer of audio.
  rect( 140, 768, 100, 100-groove.left.level()*height);
  rect( 40, 768, 100, 100-groove.right.level()*height);

  float posx = map(groove.position(), 0, groove.length(), 0, width);
  stroke(0, 200, 0);
  line(posx, 0, posx, 200);
  
  textSize(12);
  fill(255);
  text("FileName:" + meta.fileName(), 300, 740);
  fill(255);
  text("Length  (in  milliseconds):"  +  meta.length(), 700, 760);
  fill(255);
  text("Title:"  +  meta.title(), 500, 760); 
  
  textSize(40);
  fill(100);
  text("L",40,100);
  text("R",40,200);
  
}
