import 'package:english_app/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:english_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class Wrapper extends StatelessWidget {
  static const miliseconds = 5;

  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<AuthenticationBloc>(context),
      child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, authenticationState) {
          if (authenticationState is Authenticated) {
            // If change the locale using Get.UpdateLocale on SettingsScreen
            // the app reload the children widgets including the Wrapper
            // causing that reopen the home (not wished)
            // to avoid this we use the if statement to prevent the reload
            if (Get.currentRoute != '/settings') {
              // The future delayed not affect the app loading times
              // but it is necessary because first we need that the
              // widget returned load (build) first and then
              // we allow to do the navigation
              Future.delayed(Duration(milliseconds: miliseconds), () {
                Get.offNamedUntil(
                  '/home',
                  // The wrapper navigator is important that allways exist
                  // at first in the navigation stack, so we need the predicate
                  // bellow to avoid that the wrapper navigator is removed
                  (route) => route.settings.name == '/wrapper',
                );
              });
            }
          }
          if (authenticationState is Unauthenticated) {
            Future.delayed(Duration(milliseconds: miliseconds), () {
              Get.offNamedUntil(
                '/login',
                (route) => route.settings.name == '/wrapper',
              );
            });
          }
          if (authenticationState is Uninitialized) {
            //Future.delayed(
            //  Duration(milliseconds: miliseconds),
            //  () => Get.offAllNamed('/splash'),
            //);
          }
        },
        builder: (context, authenticationState) {
          return SplashScreen();
        },
      ),
    );
  }
}
