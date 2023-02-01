import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Me extends StatelessWidget {
  const Me({super.key});

  // void changePage(BuildContext ctx) {
  //   Navigator.of(ctx).pushNamed('/History');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        // width: double.infinity,
        decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
        child: Column(children: <Widget>[
          Align(alignment: Alignment(1, 0), child: buildSettings()),
          Flexible(flex: 2, fit: FlexFit.tight, child: buildProfile()),
          Flexible(flex: 1, fit: FlexFit.tight, child: buildMenu()),
          Flexible(flex: 6, fit: FlexFit.tight, child: buildDetails())
        ]),
      )),
    );
  }

  Widget buildSettings() =>
      IconButton(onPressed: (() {}), icon: Icon(Icons.settings));
}

Widget buildProfile() => Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Row(
        children: [
          CircleAvatar(
              radius: 60,
              backgroundImage:
                  NetworkImage('https://picsum.photos/250?image=9')),
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('userName temp'),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, spreadRadius: 1),
                    ],
                  ),
                  child: LinearPercentIndicator(
                    width: 120.0,
                    lineHeight: 15.0,
                    percent: 0.2,
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    barRadius: const Radius.circular(16),
                    progressColor: Colors.blue[400],
                    backgroundColor: Colors.grey[300],
                  ),
                ),
                const SizedBox(height: 5),
                Text('3 places visited'),
              ],
            ),
          )
        ],
      ),
    );

Widget buildMenu() => Text('Menu');

Widget buildDetails() => Text('details');
