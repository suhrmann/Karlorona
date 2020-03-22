import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';

class HygienePage extends StatefulWidget {

  const HygienePage({ Key key }) : super(key: key);

  @override
  _HygienePageState createState() => _HygienePageState();
}

class _HygienePageState extends State<HygienePage> {

  bool _checkHand = false;
  bool get checkHand => _checkHand;
  set checkHand (bool value) {
    _checkHand = value;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Infektionsschutz:"),
            ),

            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            Container(
              child: RaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Visibility(
                      child: Icon(Icons.check),
                      visible: ScopedModel.of<MainModel>(context).getvisibleHandIcon,
                    ),
                    Text("Hände waschen"),
                  ],
                ),
                onPressed: () => Navigator.pushNamed(context, '/hand'),
              ),
            ),

            RaisedButton(
              child: Text("Sicherheitsabstand"),
              onPressed: () => Navigator.pushNamed(context, '/distance'),
            ),
            RaisedButton(
              child: Text("Smartphone Desinfektion"),
              onPressed: () => Navigator.pushNamed(context, '/smartdes'),
            ),
            RaisedButton(
              child: Text("Niesen / Husten"),
              onPressed: () => Navigator.pushNamed(context, '/sneeze'),
            ),
            RaisedButton(
              child: Text("Mit den Händen nicht ins Gesicht fassen"),
              onPressed: () => Navigator.pushNamed(context, '/handsface'),
            ),
            //Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );


  }
}
