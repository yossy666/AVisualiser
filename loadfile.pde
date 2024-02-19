

void loadfile() {

  File folder = new File(sketchPath("data"));
  files = folder.listFiles();
  
  

  while (true) {
    String[] options = getMP3FileNames(files);
    Object selectedOption = JOptionPane.showInputDialog(null, "Select a file to play:", "File Selection", JOptionPane.PLAIN_MESSAGE, null, options, options[0]);

    if (selectedOption != null) {
      String selectedFileName = (String) selectedOption;
      minim = new Minim(this);
      groove = minim.loadFile(selectedFileName, 1024);
      meta  =  groove.getMetaData();
      break;
    } 
    else {
      String[] options1 = getMP3FileNames(files);
      Object selectedOption1 = JOptionPane.showInputDialog(null, "Select a file to play:", "File Selection", JOptionPane.PLAIN_MESSAGE, null, options, options[0]);

      if (selectedOption1 != null) {
        String selectedFileName = (String) selectedOption1;
        minim = new Minim(this);
        groove = minim.loadFile(selectedFileName, 1024);
        meta  =  groove.getMetaData();
        break;
      }
    }
  }
}
