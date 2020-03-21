import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';

class MascotPage extends StatelessWidget {
  const MascotPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: ListTile(
              title: Text(
                "Hallo, Kater Karlo!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 8,
          child: Container(child: Image.asset("assets/images/logo.png")),
        ),
        Flexible(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width / 2,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 0.8,
                  center: Text("Wohlbefinden: 80.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.green,
                ),
                CircleAvatar(
                  minRadius: 35,
                  backgroundColor: Colors.yellow,
                  child: Text("Level 5"),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
