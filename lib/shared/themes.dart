import 'package:flutter/material.dart';

// Pallete colors
// https://colorswall.com/palette/52989/

const Color red1 = Color.fromRGBO(250, 68, 85, 1);
const Color red2 = Color.fromRGBO(220, 61, 75, 1);

const Color dark1 = Color.fromRGBO(36, 46, 62, 1);
const Color dark2 = Color.fromRGBO(61, 68, 82, 1);

const Color white1 = Colors.white;
const Color white2 = Color.fromRGBO(245, 245, 245, 1);

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: red1,
  accentColor: red2,
  backgroundColor: white1,
  buttonColor: red1,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: red1,
      textStyle: TextStyle(color: red1),
    ),
  ),
  colorScheme: ThemeData.light().colorScheme.copyWith(
        primary: red1,
        primaryVariant: white1,
        secondaryVariant: white2,
        secondary: red2,
        onError: red2,
      ),
  iconTheme: const IconThemeData(color: red2),
  inputDecorationTheme: InputDecorationTheme(
    errorStyle: TextStyle(color: red1),
    focusColor: red2,
    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: red1)),
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: red1,
  accentColor: red2,
  backgroundColor: dark1,
  scaffoldBackgroundColor: dark1,
  buttonColor: red1,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: red1,
      textStyle: TextStyle(color: red1),
    ),
  ),
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        primary: red1,
        primaryVariant: dark1,
        secondaryVariant: dark2,
        secondary: red2,
        onError: red2,
      ),
  iconTheme: const IconThemeData(color: red2),
  inputDecorationTheme: InputDecorationTheme(
    errorStyle: TextStyle(color: red1),
    //labelStyle: TextStyle(color: red2),
    focusColor: red2,
    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: red1)),
  ),
);
