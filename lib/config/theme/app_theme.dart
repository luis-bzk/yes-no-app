import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFf472b6);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.purple,
  Colors.pink,
  Colors.yellow,
  Colors.teal,
  Colors.deepOrange,
  Colors.green,
  Colors.indigo,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            "Colors must be between 0 asn ${_colorThemes.length}");

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: Brightness.light);
  }
}
