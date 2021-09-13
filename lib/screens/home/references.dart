import 'package:english_app/screens/global/app_bar.dart';
import 'package:english_app/screens/global/side_bar_menu/side_bar_menu.dart';
import 'package:english_app/shared/themes.dart';
import 'package:flutter/material.dart';

class References extends StatelessWidget {
  const References({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarMenu(),
      appBar: globalAppBar,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24),
                Center(
                  child: Text(
                    'References',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: red1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Michael McCarthy, J. M. (2021). Touchstone 2E Level 3B Online Course and Online Workbook.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
