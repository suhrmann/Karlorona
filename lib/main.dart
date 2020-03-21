import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

import './scoped-model/main-model.dart';

import './app-container.dart';
import './pages/first-page.dart';
import './pages/second-page.dart';
import './pages/database-tester.dart';
import './pages/init-quiz-page.dart';
import './pages/mascot-page.dart';

void main() => runApp(IchMacheEsRichtigODER());

class IchMacheEsRichtigODER extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// ScopedModel wird für Statemanagement verwendet.
    /// Das Widget ScopedModelDescendant<MainModel>
    /// und seine Subwidget können auf den State zugreifen
    /// Das ScopedModel wird im Ordner /lib/scoped-model definiert
    /// "Ausgangspunkt" dabei ist das MainModel
    ///
    /// Scoped Model Dokumentation/API:
    /// https://pub.dev/packages/scoped_model
    return ScopedModel<MainModel>(
        model: MainModel(),
        child: MaterialApp(
          title: 'Ich Mache es richtig, ODER?',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),

          /// Eindeutige "Addressen" für die jeweiligen pages
          /// Bitte diese Struktur bei allen Standardpages mit dem AppContainer beibehalten, um eine Abstraktion des Layouts zu ermöglichen
          routes: {
            '/': (context) => AppContainer(body: FirstPage()),
            '/secondpage': (context) => AppContainer(body: SecondPage()),
            '/dbtester': (context) => AppContainer(body: DatabaseTester()),
            '/quiz': (context) => AppContainer(body: InitQuizPage()),
            '/mascot': (context) => AppContainer(body: MascotPage()),
          },
        ));
  }
}
