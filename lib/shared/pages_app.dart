import 'package:english_app/screens/authentication/login/login_screen.dart';
import 'package:english_app/screens/authentication/sign_up/sign_up_screen.dart';
import 'package:english_app/screens/home/activity_one.dart';
import 'package:english_app/screens/home/conclusions.dart';
import 'package:english_app/screens/home/home_screen.dart';
import 'package:english_app/screens/home/opinion_reflection.dart';
import 'package:english_app/screens/home/references.dart';
import 'package:english_app/screens/home/some_advice.dart';
import 'package:english_app/screens/profile/profile_screen.dart';
import 'package:english_app/screens/settings/settings_screen.dart';
import 'package:english_app/screens/splash/splash_screen.dart';
import 'package:english_app/screens/wrapper.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

// Transition constant
Transition defaultTransition = Transition.cupertino;

// Routes pages
List<GetPage<dynamic>> routesPages = [
  GetPage(
    name: '/wrapper',
    page: () => Wrapper(),
  ),
  GetPage(
    name: '/splash',
    page: () => SplashScreen(),
  ),
  GetPage(
    name: '/login',
    page: () => LoginScreen(),
  ),
  GetPage(
    name: '/sign_up',
    page: () => SignUpScreen(),
  ),
  GetPage(
    name: '/home',
    page: () => HomeScreen(),
  ),
  GetPage(
    name: '/settings',
    page: () => SettingsScreen(),
    transition: defaultTransition,
  ),
  GetPage(
    name: '/profile',
    page: () => ProfileScreen(),
  ),
  GetPage(
    name: '/activity_one',
    page: () => ActivityOne(),
  ),
  GetPage(
    name: '/advice',
    page: () => SomeAdvice(),
  ),
  GetPage(
    name: '/opinion',
    page: () => OpinionReflection(),
  ),
  GetPage(
    name: '/conclusions',
    page: () => Conclusions(),
  ),
  GetPage(
    name: '/references',
    page: () => References(),
  ),
];
