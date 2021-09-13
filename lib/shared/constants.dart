import 'package:flutter/material.dart';

//-------------------------------------------------
//--------------- SIZE CONSTANTS ------------------
//-------------------------------------------------

const kCardMaxWidth = 350.0;

//---------------------------------------------------
//--------------- COLORS CONSTANTS ------------------
//---------------------------------------------------

final kScaffoldBackgroundGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  stops: [0.1, 0.5, 0.8],
  colors: [
    Colors.blue[600]!,
    Colors.blue[500]!,
    Colors.blue[400]!,
  ],
);

//---------------------------------------------------
//------------------ DURATIONS ----------------------
//---------------------------------------------------

const loginDuration = Duration(seconds: 2);
const signUpDuration = Duration(seconds: 4);
const splashScreenDuration = Duration(seconds: 2);
const errorFormFieldVerificationDuration = Duration(milliseconds: 100);
