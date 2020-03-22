import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/scoped-model/main-model.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:scoped_model/scoped_model.dart';

class MascotPage extends StatefulWidget {
  @override
  _MascotPageState createState() => _MascotPageState();
}

class _MascotPageState extends State<MascotPage> {
  @override
  void initState() {
    ScopedModel.of<MainModel>(context).getCurrentWellScore();
    super.initState();
  }

  String _getRightCat(double score) {
    String caturl = "assets/images/kater/";

    if (score < 20 && score >= 0) caturl = caturl + "kater-1-krank.png";
    if (score < 40 && score >= 20) caturl = caturl + "kater-2-traurig.png";
    if (score < 60 && score >= 40) caturl = caturl + "kater-3-besorgt.png";
    if (score < 80 && score >= 60) caturl = caturl + "kater-4-ok.png";
    if (score < 100 && score >= 80) caturl = caturl + "kater-5-glücklich.png";

    return caturl;
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
      builder: (BuildContext context, Widget child, MainModel model) {
        return model.isLoadingWellScore
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey),
                      child: ListTile(
                        title: Text(
                          "Hallo, ${model.username}!",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey),
                      child: ListTile(
                        title: Text(
                          "Berühre Karlo, um Aktivitäten zu starten!",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 16,
                    child: Container(
                        child: GestureDetector(
                      child: Image.asset(_getRightCat(
                          ScopedModel.of<MainModel>(context).currentWellScore)),
                      onTap: () {
                        Navigator.pushNamed(context, "/activity");
                      },
                    )),
                  ),
                  Flexible(
                    flex: 4,
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
                            percent: model.currentWellScore / 100,
                            center: Text(
                                "Wohlbefinden: ${model.currentWellScore}%"),
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
      },
    );
  }
}
