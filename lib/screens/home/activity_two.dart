import 'package:english_app/screens/global/app_bar.dart';
import 'package:flutter/material.dart';

class ActivityTwo extends StatelessWidget {
  const ActivityTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: DataTable(
              dataRowHeight: 150,
              columns: [
                DataColumn(
                  label: Text(
                    'Word',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                DataColumn(
                    label: Text(
                  'Definition',
                  style: TextStyle(fontSize: 16),
                )),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(pointBuilder("Best Friend")),
                    DataCell(pointBuilder2("I can define a best friend as my special person who I can trust with any secret and she/he will respect my privacy.")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(pointBuilder("Circle of friends")),
                    DataCell(pointBuilder2("My circle of friends is a little bit small.")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(pointBuilder("Meet a person through a friend")),
                    DataCell(pointBuilder2("Last week I met Laura through my friend Daniela, who is a professional skater. I was astonished when I saw her skate.")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(pointBuilder("Roommate")),
                    DataCell(pointBuilder2("I know I don´t live in a college dorm, but I would like to have the experience of a college mate occupying the same room as mine.")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(pointBuilder("High school sweetheart")),
                    DataCell(pointBuilder2("It is an expression that people use to talk about someone they used to date in high school.")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget pointBuilder(String text) {
    return Row(
      children: [
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Icon(Icons.arrow_right_alt_outlined),
      ],
    );
  }

  Widget pointBuilder2(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }
}
