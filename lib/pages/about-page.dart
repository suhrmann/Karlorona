import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Text(''),
              // #WirvsCorona
              Center(
                child: Image.asset("assets/images/wirvsvirus_logo.png"),
              ),
              Text(''),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text.rich(
                    TextSpan(
                      text: 'Dieses Projekt wurde im Rahmen des Hackathons ', // default text style
                      children: <TextSpan>[
                        TextSpan(text: '#WirvsVirus ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'vom 20. bis 22.03.2020 erstellt.'),
                      ],
                    ),
                    textAlign: TextAlign.center,
                ),
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

              Text(''),
              Text(''),
              Text(''),

              // Mitwirkende
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Credits',
                      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                    ),
                    Text(''),

                    // Händewaschensong
                    Text('Händewaschensong', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text.rich(TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Band: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Die Monks I'),
                      ],
                    )),
                    Text.rich(TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Lyrics: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Andreas Putz, Henry Bruckner-Putz, Andreas Hunger'),
                      ],
                    )),
                    Text.rich(TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Komposition: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Soundfeiler, Andreas Putz, Henry Bruckner-Putz'),
                      ],
                    )),
                    Text.rich(TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Label: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Soundfeiler, Jung von Matt'),
                      ],
                    )),
                    InkWell(
                      child: new Text('Händewaschsong [Österreichisches Rotes Kreuz]', style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
                      onTap: () => _launchURL('https://www.roteskreuz.at/site/coronavirus-sind-wir-bereit/risiken-minimieren/haendewaschen-song')
                    ),
                  ],
                ),
              ),

              Text(''),
              Text(''),
              Text(''),

            ]
          )
        ),
      ),
    );
  }
}
