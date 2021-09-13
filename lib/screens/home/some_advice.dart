import 'package:english_app/screens/global/app_bar.dart';
import 'package:english_app/screens/global/side_bar_menu/side_bar_menu.dart';
import 'package:english_app/shared/themes.dart';
import 'package:flutter/material.dart';

class SomeAdvice extends StatelessWidget {
  const SomeAdvice({Key? key}) : super(key: key);

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
                    'Some advice for your relationship ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: red1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 16),
                cardBuilder("Tip #1", "You should always listen. Try to listen before to talk."),
                cardBuilder("Tip #2", "You could go out every week for a date, even if your are so busy with things, try to don´t cold things down."),
                cardBuilder("Tip #3", "You must continuously tell her/him that you love him/her."),
                cardBuilder("Tip #4", "Have you tried making crafts for him/her?"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Card cardBuilder(String title, String subtitle) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text(title),
            subtitle: Text(subtitle),
            leading: Icon(Icons.favorite),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () => {},
                child: Row(
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(width: 7),
                    Text(
                      'Like',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: red1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
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
