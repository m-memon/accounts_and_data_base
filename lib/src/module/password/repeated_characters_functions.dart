bool repeatedCharactersFunctions(String detect) {
  bool detector = true;
  for (int i = 2; i < detect.length; i = i + 1) {
    if (detect[i] == detect[i - 1]) {
      if (detect[i - 1] == detect[i - 2]) {
        detector = false;
        break;
      } // if
    } // if
  } // for
  return detector;
} // repeatedCharactersFunctions