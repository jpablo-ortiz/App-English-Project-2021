import 'package:english_app/screens/global/app_bar.dart';
import 'package:english_app/screens/global/side_bar_menu/side_bar_menu.dart';
import 'package:english_app/shared/themes.dart';
import 'package:flutter/material.dart';

class OpinionReflection extends StatelessWidget {
  const OpinionReflection({Key? key}) : super(key: key);

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
                    'Opinion and reflection about the topic',
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
                  'Sometimes relationships are one of the most unstable aspects of life because they last just the few years of your school age, high school age, college age or working time age. However, the human being is a social being who needs to be loved and accepted. That´s why friendship and love are important topics to talk about and learn how to describe in a proper manner when we are learning a language.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 16),
                Text(
                  'In this application (my creative deliverable), you will find examples and definitions from some new words that I leaned in the seventh unit from the Cambridge book about relationships.  In this topic, I listened to conversations between friends, I completed sentences and I filled blank spaces. Also, some examples, displayed inside the activities from the app, describe some real stories from me and my friends, while I am trying to apply all the new grammar and vocabulary learned in this session.',
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
