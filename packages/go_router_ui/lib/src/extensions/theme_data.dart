import 'package:go_router_ui/go_router_ui.dart';
import 'package:flutter/material.dart';

///Extension on Themedata that must be added to return the correct asset
extension ThemeX on ThemeData {
  ///Returns the correct GRIcon based on the current theme
  GRIcon get icons {
    final isDarkMode = brightness == Brightness.dark;
    if (isDarkMode) {
      return GRIconsDark();
    } else {
      return GRIconsLight();
    }
  }
}
