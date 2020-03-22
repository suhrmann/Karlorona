import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Text(''),
            // #WirvsCorona
            Center(
              child: Image.asset("assets/images/wirvsvirus_logo.png"),
            ),
            Text(''),
            Center(
              child: Text('Dieses Projekt wurde im Rahmen des Hackathons #WirvsVirus am Wochenende vom 20. bis 22.03.2020 erstellt.'),
            ),

            Text(''),
            Text(''),
            Text(''),

            // Mitwirkende
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Mitwirkende',
                    style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                  ),
                  Text(''),

                  Text('Entwicklung', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Tobias Luderer'),
                  Text('Simon Uhrmann'),
                  Text('Marcel Zimmermann'),
                  Text(''),

                  Text('Design', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Ksenija Perovic'),
                  Text(''),

                  Text('Konzept', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Christiane Terlinden'),
                  Text('Hannah Uhrmann'),
                  Text('Luise Wagner'),
                  Text('Lars Weidner'),
                  Text('Linda Waitz'),
                  Text('Marcel Zimmermann'),
                ],
              ),
            ),

          ]
        )
      ),
    );
  }
}
