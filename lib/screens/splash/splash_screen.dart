import 'package:english_app/shared/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red1,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset(
            'assets/javeriana.svg',
            width: Get.width * 0.7,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
