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

  Color bottomColor = Colors.brown[200];

  String _getRightCat(double score) {
    String caturl = "assets/images/kater/";

    if (score < 20 && score >= 0) caturl = caturl + "kater-1-krank@0.1x.png";
    if (score < 40 && score >= 20) caturl = caturl + "kater-2-traurig@0.1x.png";
    if (score < 60 && score >= 40) caturl = caturl + "kater-3-besorgt@0.1x.png";
    if (score < 80 && score >= 60) caturl = caturl + "kater-4-ok@0.1x.png";
    if (score <= 100 && score >= 80)
      caturl = caturl + "kater-5-glucklich@0.1x.png";

    return caturl;
  }

  Widget _wellBeingIndicator(
      {Color color, String indicatorText, double value, bool applyMargin}) {
    return Container(
      margin: applyMargin
          ? EdgeInsets.only(left: MediaQuery.of(context).size.width / 11)
          : null,
      child: LinearPercentIndicator(
        width: MediaQuery.of(context).size.width / 1.6,
        animation: true,
        lineHeight: 30.0,
        animationDuration: 2500,
        percent: value / 100,
        center: Text("$indicatorText: $value%"),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: color,
      ),
    );
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
                            ScopedModel.of<MainModel>(context)
                                .currentWellScore)),
                        onTap: () {
                          Navigator.pushNamed(context, "/activity");
                        },
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: bottomColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => showModalBottomSheet(
                              backgroundColor: bottomColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              context: context,
                              builder: (context) => Container(
                                height: MediaQuery.of(context).size.height / 3,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    _wellBeingIndicator(
                                      indicatorText: "Infektionsschutz",
                                      value: model.currentHygieneScore,
                                      color: Colors.orange,
                                      applyMargin: true,
                                    ),
                                    _wellBeingIndicator(
                                      indicatorText: "Allgemeine Gesundheit",
                                      value: model.currentHealthScore,
                                      color: Colors.lime,
                                      applyMargin: true,
                                    ),
                                    _wellBeingIndicator(
                                      indicatorText: "Psych. Wohlbefinden",
                                      value: model.currentPsychScore,
                                      color: Colors.teal,
                                      applyMargin: true,
                                    ),
                                    _wellBeingIndicator(
                                      indicatorText: "Wohlbefinden",
                                      value: model.currentWellScore,
                                      color: Colors.lightBlue,
                                      applyMargin: true,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            child: _wellBeingIndicator(
                              indicatorText: "Wohlbefinden",
                              value: model.currentWellScore,
                              color: Colors.lightBlue,
                              applyMargin: false,
                            ),
                          ),
                          CircleAvatar(
                            minRadius: 25,
                            backgroundColor: Colors.yellow,
                            child: Text(
                              "Level 5",
                              style: TextStyle(fontSize: 12),
                            ),
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
