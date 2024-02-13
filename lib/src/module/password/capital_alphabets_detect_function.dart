bool capitalAlphabetsDetectFunction(String detect) {
  bool detector = false;
  List<String> capitalAlphabets = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ]; // capitalAlphabets
  for (int index = 0; index < capitalAlphabets.length; index++) {
    if (detect.contains(capitalAlphabets[index])) {
      detector = true;
      break;
    } // if
  } // for
  return detector;
} // capitalAlphabetsDetectFunction