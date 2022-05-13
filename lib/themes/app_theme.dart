import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData createTheme(bool isDark) {
    final ThemeData theme = !isDark ? ThemeData.light() : ThemeData.dark();
    final Color color =
        !isDark ? Colors.indigo : const Color.fromRGBO(25, 26, 25, 1);
    return theme.copyWith(
      appBarTheme: AppBarTheme(backgroundColor: color, elevation: 0),
    );
  }
}
