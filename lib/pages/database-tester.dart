import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/main-model.dart';

class DatabaseTester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
