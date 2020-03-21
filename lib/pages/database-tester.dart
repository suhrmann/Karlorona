import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';

class DatabaseTester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      /// Hier wird auf den State zugegriffen. Alle Subwigets in dieser Datei können zugreifen
      /// Das Model kann theoretisch auch an Funktionen oder anderer Wigets als Parameter weitergegeben werden.
      child: ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
          return Column(
            children: <Widget>[
              RaisedButton(
                  child: Text("add some data"),
                  onPressed: () {
                    model.addRow().then((e) => print(e));
                  }),
              RaisedButton(
                  child: Text("retrieve data and print to console"),
                  onPressed: () {
                    model.retrieveData().then((e) => print(e));
                  })
            ],
          );
        },
      ),
    );
  }
}
