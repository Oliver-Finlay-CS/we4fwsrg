void startStop() {
  if (keyPressed) {
    if (key == '7') {
      start = true;
    }
  }

  if (keyPressed) { 
    if (key == 'p' || key == 'P') {
      println ("The canvas has exited.");
      exit();
    }
  }
}
