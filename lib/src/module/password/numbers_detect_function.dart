bool numbersDetectFunction(String detect) {
  bool detector = false;
  List<String> numbersChar = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9"
  ]; // numbersKeys
  for (int index = 0; index < numbersChar.length; index++) {
    if (detect.contains(numbersChar[index])) {
      detector = true;
      break;
    } // if
  } // for
  return detector;
} // numbersDetectFunction