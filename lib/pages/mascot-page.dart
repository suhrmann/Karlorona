import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/scoped-model/main-model.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:scoped_model/scoped_model.dart';

class MascotPage extends StatelessWidget {
  const MascotPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScopedModel.of<MainModel>(context).getCurrentWellScore();
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: ListTile(
              title: Text(
                "Hallo, ${ScopedModel.of<MainModel>(context).username}!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 8,
          child: Container(
              child: GestureDetector(
            child: Image.asset("assets/images/logo.png"),
            onTap: () {
              Navigator.pushNamed(context, "/activity");
            },
          )),
        ),
        Flexible(
            flex: 2,
            child: ScopedModelDescendant<MainModel>(
                builder: (BuildContext context, Widget child, MainModel model) {
              return Container(
                decoration: BoxDecoration(color: Colors.grey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width / 2,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: model.currentWellScore / 100,
                      center: Text("Wohlbefinden: ${model.currentWellScore}%"),
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
              );
            })),
      ],
    );
  }
}
