import 'package:flutter/material.dart';

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

final aliceBlue = '#EFFBFF'.toColor();
final eerieBlack = '#1E1E1E'.toColor();
final blackDefault = '#000000'.toColor();
final whiteDefault = '#FFFFFF'.toColor();
final mistyRose = '#F9E2E2'.toColor();
final lava = '#C81818'.toColor();
final indiaGreen = '#169C00'.toColor();
final darkKhaki = '#C1B46E'.toColor();
final lightSalmonPink = '#FF9D9D'.toColor();
final smokyTopaz = '#9E4444'.toColor();
final fuzzyWuzzy = '#BD656547'.toColor();
final sunsetOrange = '#FF5959'.toColor();
