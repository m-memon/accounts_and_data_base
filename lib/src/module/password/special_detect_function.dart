bool specialDetectFunction(String detect) {
  bool detector = false;
  List<String> specialChar = [
    "`",
    "~",
    "!",
    "@",
    "#",
    "\$",
    "%",
    "^",
    "&",
    "*",
    "(",
    ")",
    "-",
    "_",
    "=",
    "+",
    "[",
    "{",
    "]",
    "}",
    "\\",
    "|",
    ";",
    ":",
    "'",
    '"',
    ",",
    "<",
    ".",
    ">",
    "/",
    "?"
  ]; // specialKeys
  for (int index = 0; index < specialChar.length; index++) {
    if (detect.contains(specialChar[index])) {
      detector = true;
      break;
    } // if
  } // for
  return detector;
} // specialDetectFunction