import 'package:english_app/shared/themes.dart';
import 'package:flutter/material.dart';

class ActivityThree extends StatelessWidget {
  const ActivityThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
        dataRowHeight: 120,
        columns: [
          DataColumn(
            label: Expanded(
              child: Text(
                'Word',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Definition',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(pointBuilder("Ask me out")),
              DataCell(
                pointBuilder2(
                    "The meaning os to invite someone to lunch, dinner or the movies. It is to go on a date. An example that happened this week through Javeriana Confessions profile on Instagram: When a girl invited a cute man through a paper boat to go and have a coffee with her. That will be called in a shorter way: She asked him out."),
              ),
            ],
          ),
          DataRow(
            cells: [
              DataCell(pointBuilder("Go out with")),
              DataCell(pointBuilder2(
                  "The meaning is to date someone, maybe when it is at the beginning of a relationship. In the last example, if the man accepts the invitation, that will be described as: he goes out with her (in present tense). If it already happened the last week, it would have been said as: he went out with her (in the past tense). Now, if the situation is described when the date is happening, it would be said as: He is going out with her at his moment!!")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(pointBuilder("Settle down")),
              DataCell(pointBuilder2("The meaning when we are a relationship topic is when a person is getting married and it will lead a quieter life. Maybe that will be the moment of the life when a person is going to star wishing to buy a house and have children.")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(pointBuilder("Work out")),
              DataCell(
                  pointBuilder2("Although “Work out” can be used in other context to say that a person physically trains his/her body or goes to the gym, “Work things out” in a relationship topic is when the couple is trying to solve their problems and they wish things between them get better.")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(pointBuilder("Break up")),
              DataCell(pointBuilder2("The meaning is when a relationship is over, when they separate.")),
            ],
          ),
        ],
      ),
    );
  }

  Widget pointBuilder(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: red1,
      ),
    );
  }

  Widget pointBuilder2(String text) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
