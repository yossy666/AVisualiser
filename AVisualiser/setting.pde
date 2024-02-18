ControlP5 slider;
void setting(){

  slider = new ControlP5(this);
  
  slider.addKnob("red") 
    .setRange(0, 255) 
    .setValue(r)
    .setPosition(530, 600)
    .setSize(100,100)
    .setColorForeground(color(100,0,0))
    .setColorActive(color(190,0,100))
    .setColorBackground(color(40)); 
    
  slider.addKnob("green") 
    .setRange(0, 255) 
    .setValue(g)
    .setPosition(640,600)
    .setSize(100,100)
    .setColorForeground(color(0,100,0))
    .setColorActive(color(0,190,100))
    .setColorBackground(color(40));
   
  slider.addKnob("blue") 
    .setRange(0, 255) 
    .setValue(b)
    .setPosition(750, 600)
    .setSize(100,100)
    .setColorForeground(color(0,0,190))
    .setColorActive(color(0,100,240))
    .setColorBackground(color(40));
    
    
    
  slider.addKnob("waveColorR") 
    .setRange(0, 255) 
    .setValue(255)
    .setPosition(530, 480)
    .setSize(100,100)
    .setColorForeground(color(100,0,0))
    .setColorActive(color(190,0,100))
    .setColorBackground(color(40)); 
    
   slider.addKnob("waveColorG") 
    .setRange(0, 255) 
    .setValue(255)
    .setPosition(640,480)
    .setSize(100,100)
    .setColorForeground(color(0,100,0))
    .setColorActive(color(0,190,100))
    .setColorBackground(color(40));
    
   slider.addKnob("waveColorB") 
    .setRange(0, 255) 
    .setValue(255)
    .setPosition(750, 480)
    .setSize(100,100)
    .setColorForeground(color(0,0,190))
    .setColorActive(color(0,100,240))
    .setColorBackground(color(40));
    
   slider.addKnob("waveColorA") 
    .setRange(0, 255) 
    .setValue(255)
    .setPosition(860, 480)
    .setSize(100,100)
    .setColorForeground(color(190,190,190))
    .setColorActive(color(240,240,240))
    .setColorBackground(color(40));
    
}
    
    
void red(float value){
  r = int(value);
}
void green(float value){
  g = int(value);
}
void blue(float value){
  b = int(value);
}

void waveColorR(float value){
  wr = int(value);
}
void waveColorG(float value){
  wg = int(value);
}
void waveColorB(float value){
  wb = int(value);
}
void waveColorA(float value){
  wa = int(value);
}
