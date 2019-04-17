import 'dart:ui';

import 'package:flutter/material.dart';

class Config {
  Config._();

  static Color weirdGreen = Color(0xFF30dd80);
  static Color darkerGreen = Color(0xFF4a928a);
  static Color facebookBlue = Color(0xFF4867ad);
  static Color googleRed = Color(0xFFcc4f40);

  static LinearGradient linearGradient = LinearGradient(
    colors: [
      Config.darkerGreen,
      Config.weirdGreen,
    ],
  );
}
