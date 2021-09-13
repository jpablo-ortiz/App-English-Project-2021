import 'package:english_app/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:english_app/screens/global/app_bar.dart';
import 'package:english_app/screens/global/side_bar_menu/side_bar_menu.dart';
import 'package:english_app/screens/home/activity_one.dart';
import 'package:english_app/screens/home/activity_three.dart';
import 'package:english_app/screens/home/activity_two.dart';
import 'package:english_app/shared/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool _isOpen;

  @override
  void initState() {
    super.initState();
    _isOpen = false;
  }

  @override
  Widget build(BuildContext context) {
    var blocProvider = BlocProvider.of<AuthenticationBloc>(context);
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
                    'English Project Delivery App',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Objectives:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'In this app, I am going to use my programmer skills and the new topics I learned during the development of the Unit 7 of the book: Relationships.',
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'Use some new phrases I learned for the relationships topic.',
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'Use new phrasal verbs.',
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'I will describe people and things using relative clauses.',
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'I will Talk about dating using phrasal verbs like get along and break up.',
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'I will make a list of new vocabulary I liked.',
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'I will show some phrasal verbs their definitions related with relationships.',
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'I will tell a short story about my friend using some new grammar I learned or was interesting for me.',
                ),
                SizedBox(height: 8),
                pointBuilder(
                  'I will give some advice for your relationship.',
                ),
                SizedBox(height: 24),
                Text(
                  'Summary of the topic:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  'Sometimes relationships are one of the most unstable aspects of life because they last just the few years of your school age, high school age, college age or working time age. However, the human being is a social being who needs to be loved and accepted. That´s why friendship and love are important topics to talk about and learn how to describe in a proper manner when we are learning a language.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'In this application (my creative deliverable), you will find examples and definitions from some new words that I leaned in the seventh unit from the Cambridge book about relationships.  In this topic, I listened to conversations between friends, I completed sentences and I filled blank spaces. Also, some examples, displayed inside the activities from the app, describe some real stories from me and my friends, while I am trying to apply all the new grammar and vocabulary learned in this session.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => ActivityOne());
                        },
                        child: Text("Words and descriptions"),
                      ),
                      SizedBox(height: 24),
                      ExpansionPanelList(
                        elevation: 12,
                        children: [
                          ExpansionPanel(
                            backgroundColor: red1,
                            headerBuilder: (context, isExpanded) {
                              return Center(
                                child: Text(
                                  'Some grammar I learned or was interesting for me',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            },
                            body: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      'Kenneth is a close friend who used to sit across from me in classes before the covid-19 pandemic Kenneth was introduced to me by Andrés. Thanks to Andrés I met Kenneth, who is my best college friend. For me, Kenneth is the best college programmer I have ever had. He is better friend than Abraham, who is more creative than Kenneth. However, I rather spend time with people I can get along easier than people smarter for my college works. That´s why I spend more time with Kenneth that with Abraham.',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            isExpanded: _isOpen,
                          ),
                        ],
                        expansionCallback: (index, isExpanded) {
                          setState(() => _isOpen = !_isOpen);
                        },
                      ),
                      SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => ActivityTwo());
                        },
                        child: Text("Vocabulary"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: Text(
                    'Phrasal verbs',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                ActivityThree(),
                SizedBox(height: 24),
                Center(
                  child: Text(
                    'Please see the others parts on the side bar menu',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: red1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row pointBuilder(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.arrow_right_alt_outlined),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
