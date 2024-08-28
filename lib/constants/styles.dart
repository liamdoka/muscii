import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Map<int, Color> primaryColor = {
    50: const Color(0xfff9fafb),
    100: const Color(0xfff3f4f6),
    200: const Color(0xffe5e7eb),
    300: const Color(0xffd1d5db),
    400: const Color(0xff9ca3af),
    500: const Color(0xff6b7280),
    600: const Color(0xff4b5563),
    700: const Color(0xff374151),
    800: const Color(0xff1f2937),
    900: const Color(0xff111827),
    950: const Color(0xff030712),
};

Map<int, Color> accentColor = {
    50: const Color(0xffeef2ff),
    100: const Color(0xffdbeafe),
    200: const Color(0xffbfdbfe),
    300: const Color(0xff93c5fd),
    400: const Color(0xff60a5fa),
    500: const Color(0xff3b82f6),
    600: const Color(0xff2563eb),
    700: const Color(0xff1d4ed8),
    800: const Color(0xff1e40af),
    900: const Color(0xff1e3a8a),
    950: const Color(0xff172554),
};

final bigButtonStyle = TextButton.styleFrom(
  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
  backgroundColor: accentColor[700],
  foregroundColor: primaryColor[50],
);

const headerTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
);

final textFieldStyle = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
    hintStyle: TextStyle(
        color: primaryColor[400]
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9999.0),
        borderSide: BorderSide(color: primaryColor[300]!, width: 2),
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9999.0),
        borderSide: BorderSide(color: accentColor[700]!, width: 2)
    ),
);


const buttonShadowOffset = 2.0;
const fatButtonHeight = 80.0;
const longButtonHeight = 48.0;
