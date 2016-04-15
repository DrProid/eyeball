void keyPressed() {
  background(255); //clear screen
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key;
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key;
  }
}