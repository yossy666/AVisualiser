String[] getMP3FileNames(File[] files) {
  ArrayList<String> mp3Files = new ArrayList<String>();
  
  for (File file : files) {
    if (file.isFile() && (file.getName().endsWith(".mp3") || (file.getName().endsWith(".wav")))) {
      mp3Files.add(file.getPath());
    }
  }
  return mp3Files.toArray(new String[0]);
}
