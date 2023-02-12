import 'package:flutter/material.dart';

/// {@template DSColorPalette}
/// Xports color palette implemented into code from design to gives us more
/// **options of customization**.
///
/// Take note that there are differences between a palette and a scheme
///
///   - The ```color palette``` refers to the actual colors that have been chosen.
///
///   - The ```color scheme``` is used to describe the framework of how the colors
/// are organized and put together.
///
/// This class uses material design predefined colors, but is not necessary.
///
/// The purpose here is to define a color palette that is *translated* to
/// the Flutter color scheme.
///
/// **DO NOT CHANGE THIS WITHOUT PRIOR STUDY**.
/// {@endtemplate}.
class DSColorPalette {
  ///{@macro DSColorPalette}

  const DSColorPalette(
    this.primary,
    this.secondary,
    this.neutral,
  );

  final MaterialColor primary;
  final MaterialColor secondary;
  final MaterialColor neutral;
}

//
// ignore: prefer-static-class
const dsLightColorPalette = DSColorPalette(
  _primary,
  _secondary,
  _lightNeutral,
);

//
// ignore: prefer-static-class
const dsDarkColorPalette = DSColorPalette(
  _primary,
  _secondary,
  _darkNeutral,
);

/// Copy of Colors.lightBlue. Hard coding the whole palette ensures
/// const usage of the colors. Given that these variables are used
/// in the whole app, all the time, it ensures performance.
const _primary = MaterialColor(
  0xFF4CAF50,
  <int, Color>{
    50: Color(0xFFE8F5E9),
    100: Color(0xFFC8E6C9),
    200: Color(0xFFA5D6A7),
    300: Color(0xFF81C784),
    400: Color(0xFF66BB6A),
    500: Color(0xFF4CAF50),
    600: Color(0xFF43A047),
    700: Color(0xFF388E3C),
    800: Color(0xFF2E7D32),
    900: Color(0xFF1B5E20),
  },
);

/// Copy of Colors.indigo. Hard coding the whole palette ensures
/// const usage of the colors, Given that these variables are used
/// in the whole app,all the time, it ensures performance.
const _secondary = MaterialColor(
  500,
  <int, Color>{
    50: Color(0xFFE8EAF6),
    100: Color(0xFFC5CAE9),
    200: Color(0xFF9FA8DA),
    300: Color(0xFF7986CB),
    400: Color(0xFF5C6BC0),
    500: Color(0xFF3F51B5),
    600: Color(0xFF3949AB),
    700: Color(0xFF303F9F),
    800: Color(0xFF283593),
    900: Color(0xFF1A237E),
  },
);

/// Shades of gray from white to black.
const _lightNeutral = MaterialColor(
  0,
  <int, Color>{
    0: Color(0xFFFFFFFF),
    50: Color(0xFFF3F3F3),
    75: Color(0xFFEDEDED),
    100: Color(0xFFE6E6E6),
    150: Color(0xFFEEEEEE),
    200: Color(0xFFCCCCCC),
    300: Color(0xFFB3B3B3),
    400: Color(0xFF9A9A9A),
    500: Color(0xFF808080),
    600: Color(0xFF808080),
    700: Color(0xFF666666),
    800: Color(0xFF333333),
    900: Color(0xFF1A1A1A),
    950: Color(0xFF0D0D0D),
    1000: Color(0xFF000000),
  },
);

/// Shades of grey from black to white.
const _darkNeutral = MaterialColor(
  0,
  <int, Color>{
    0: Color(0xFF000000),
    50: Color(0xFF0D0D0D),
    75: Color(0xFF151515),
    100: Color(0xFF1A1A1A),
    150: Color(0xFF222222),
    200: Color(0xFF333333),
    300: Color(0xFF666666),
    400: Color(0xFF808080),
    500: Color(0xFF808080),
    600: Color(0xFF9A9A9A),
    700: Color(0xFFB3B3B3),
    800: Color(0xFFCCCCCC),
    900: Color(0xFFE6E6E6),
    950: Color(0xFFF3F3F3),
    1000: Color(0xFFFFFFFF),
  },
);
