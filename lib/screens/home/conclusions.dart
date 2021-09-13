import 'package:english_app/screens/global/app_bar.dart';
import 'package:english_app/screens/global/side_bar_menu/side_bar_menu.dart';
import 'package:english_app/shared/themes.dart';
import 'package:flutter/material.dart';

class Conclusions extends StatelessWidget {
  const Conclusions({Key? key}) : super(key: key);

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
                    'Conclusions',
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
                  'As a conclusion, I recommend you take care of your actual friends. Enjoy the time you have with them, go out with them, take advantage of every opportunity you have for meet new people, always be open to learn new things, always listen before speaking, communicate and talk whenever you have differences or disagreements because you don’t want a broken relationship just because a misunderstanding or a lack of information. If that happens, you will regret losing a friend or a special person because for the pride of not wanting to ask, be humble and go and rescue your friendship!',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 16),
                Text(
                  'Also, remember that maybe changes are good. You should be happy and with a positive attitude whenever a change comes to your life. It is fine to be sad and nostalgic about some things in the past or some broken relationships; however, remember that maybe something better is waiting for you just a little bit forward.',
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
