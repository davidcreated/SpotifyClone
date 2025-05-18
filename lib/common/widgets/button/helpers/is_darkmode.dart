// this is an extension created to change the text of specifically the Sign in to black or white dependig on the current theme of the app
import 'package:flutter/material.dart';

extension DarkMode on BuildContext {
  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }
}
