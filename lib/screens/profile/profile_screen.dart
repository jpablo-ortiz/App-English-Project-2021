import 'package:english_app/screens/global/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  late final String name;
  late final String urlImage;

  ProfileScreen({Key? key}) : super(key: key) {
    name = Get.arguments['name'];
    urlImage = Get.arguments['urlImage'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar,
      body: Center(
        child: SvgPicture.asset(
          'assets/javeriana.svg',
          width: Get.width * 0.85,
          color: Get.theme.primaryColor,
        ),
      ),
    );
  }
}
