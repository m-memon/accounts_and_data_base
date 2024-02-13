import 'small_alphabets_detect_function.dart';
import 'capital_alphabets_detect_function.dart';
import 'numbers_detect_function.dart';
import 'special_detect_function.dart';
import 'repeated_characters_functions.dart';

int passwordScoreCountFunction(String password) {
  int score = 0;
  if (smallAlphabetsDetectFunction(password) == true) {
    score += 1;
  } // if
  if (capitalAlphabetsDetectFunction(password) == true) {
    score = score + 1;
  } // if
  if (numbersDetectFunction(password) == true) {
    score = score + 1;
  } // if
  if (specialDetectFunction(password) == true) {
    score = score + 1;
  } // if
  if (repeatedCharactersFunctions(password) == true) {
    score = score + 1;
  } // if
  return score;
} // passwordScoreCountFunction