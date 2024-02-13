bool smallAlphabetsDetectFunction(String detect) {
  bool detector = false;
  List<String> smallAlphabets = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ]; // smallAlphabets
  for (int index = 0; index < smallAlphabets.length; index++) {
    if (detect.contains(smallAlphabets[index])) {
      detector = true;
      break;
    } // if
  } // for
  return detector;
} // smallAlphabetsDetectFunction