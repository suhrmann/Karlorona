import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/scoped-model/main-model.dart';
import 'package:scoped_model/scoped_model.dart';

class HealthPage extends StatefulWidget {

  const HealthPage({ Key key }) : super(key: key);

  @override
  _HealthPageState createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Allgemeine Gesundheit:"),
            ),

            Container(
              child: RaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Visibility(
                      child: Icon(Icons.check),
                      visible: ScopedModel.of<MainModel>(context).getvisibleWalkIcon,
                    ),
                    Text("Spaziergang"),
                  ],
                ),
                onPressed: () => Navigator.pushNamed(context, '/walk'),
              ),
            ),
            /// Mit der Klasse Navigator kann auf die routes aus der main.dart navigiert werden
            RaisedButton(
              child: Text("Kraftübungen"),
              onPressed: () => Navigator.pushNamed(context, '/gym'),
            ),
            RaisedButton(
              child: Text("Ausdauerübungen"),
              onPressed: () => Navigator.pushNamed(context, '/run'),
            ),
            RaisedButton(
              child: Text("Schlafen"),
              onPressed: () => Navigator.pushNamed(context, '/sleep'),
            ),
            RaisedButton(
              child: Text("Lüften"),
              onPressed: () => Navigator.pushNamed(context, '/ventilate'),
            ),
            RaisedButton(
              child: Text("Trinken"),
              onPressed: () => Navigator.pushNamed(context, '/drink'),
            ),
            RaisedButton(
              child: Text("Obst / Gemüse essen"),
              onPressed: () => Navigator.pushNamed(context, '/eat'),
            ),
            //Image.asset("assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
