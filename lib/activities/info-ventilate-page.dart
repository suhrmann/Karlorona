import 'package:flutter/material.dart';

class InfoVentilatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Lüften ist wichtig, damit die Luft ausgetauscht wird und die Schleimhäte nicht austrocknen.",textAlign: TextAlign.left,
                  overflow: TextOverflow.clip),
            ),
          ],
        ),
      ),
    );
  }
}