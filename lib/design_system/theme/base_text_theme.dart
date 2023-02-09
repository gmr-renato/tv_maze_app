import 'package:flutter/material.dart';

// base textTheme property is necessary to reuse it on both themes
// ignore: prefer-static-class
const dsBaseTextTheme = TextTheme(
  headline1: TextStyle(
    /// Material type scale suggest 96pt
    fontSize: 72.0,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  headline2: TextStyle(
    /// Material type scale suggest 60pt
    fontSize: 56.0,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  headline3: TextStyle(
    fontSize: 48.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  ),
  headline4: TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
  ),
  headline5: TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.0,
  ),
  headline6: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
  bodyText1: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  ),
  bodyText2: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  ),
  subtitle1: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15,
  ),
  subtitle2: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  ),
  caption: TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
  ),
  button: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,

    /// Material type scale suggest 1.25 for ALL CAPS
    letterSpacing: 0.5,
  ),
  overline: TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.normal,

    /// Material type scale suggest 1.25 for ALL CAPS
    letterSpacing: 0.5,
  ),
);
