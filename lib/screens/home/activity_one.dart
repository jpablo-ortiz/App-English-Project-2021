import 'package:english_app/screens/global/app_bar.dart';
import 'package:english_app/screens/global/side_bar_menu/side_bar_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActivityOne extends StatefulWidget {
  ActivityOne({Key? key}) : super(key: key);

  @override
  _ActivityOneState createState() => _ActivityOneState();
}

class _ActivityOneState extends State<ActivityOne> {
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
                    'Words and descriptions',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Words:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 24),
                pointBuilder(
                  'Close friends',
                  'It is a group of people. I get along very well with them. I usually go out with them a lot.',
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'Coworkers',
                  'It is a group of people with which I work with. They are my partners at work.',
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'Wife',
                  'I am a male and I wish I had a very special woman at my side to share with her my every day.',
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'Husband',
                  'I am a woman, and I would love to have a lovely and handsome male at my side.',
                ),
                SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("Go Back"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row pointBuilder(String word, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            word,
            style: TextStyle(fontSize: 16),
          ),
        ),
        Expanded(
          flex: 1,
          child: Icon(Icons.arrow_right_alt_outlined),
        ),
        Expanded(
          flex: 4,
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
