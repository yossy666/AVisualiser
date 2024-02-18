void songlist(int songnum) 
{
  if (songnum == 1) {
    minim = new Minim(this);
    groove = minim.loadFile("Louder.mp3", 1024);//put this your song

    meta  =  groove.getMetaData();
  }
}
