import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

import './scoped-model/main-model.dart';

import './app-container.dart';
import './pages/first-page.dart';
import './pages/second-page.dart';
import './pages/database-tester.dart';
import './pages/init-quiz-page.dart';
import './pages/mascot-page.dart';
import './pages/activity-page.dart';
import './pages/hand-page.dart';
import './pages/hygiene-page.dart';
import './pages/info-hand-page.dart';
import './pages/info-smartdes-page.dart';
import './pages/smartdes-page.dart';
import './pages/distance-page.dart';
import './pages/info-distance-page.dart';
import './pages/info-sneeze-page.dart';
import './pages/sneeze-page.dart';
import './pages/handsface-page.dart';
import './pages/psych-page.dart';
import './pages/health-page.dart';
import './pages/gym-page.dart';
import './pages/run-page.dart';
import './pages/walk-page.dart';
import './pages/drink-page.dart';
import './pages/eat-page.dart';
import './pages/sleep-page.dart';
import './pages/ventilate-page.dart';
import './pages/info-gym-page.dart';
import './pages/info-drink-page.dart';
import './pages/info-eat-page.dart';
import './pages/info-sleep-page.dart';
import './pages/info-ventilate-page.dart';

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
            '/activity':(context) => AppContainer(body: ActivityPage()),
            '/infect':(context) => AppContainer(body: HygienePage()),
            '/health':(context) => AppContainer(body: HealthPage()),
            '/psych':(context) => AppContainer(body: PsychPage()),
            '/hand':(context) => AppContainer(body: HandPage()),
            '/distance':(context) => AppContainer(body: DistancePage()),
            '/smartdes':(context) => AppContainer(body: SmartdesPage()),
            '/sneeze':(context) => AppContainer(body: SneezePage()),
            '/handsface':(context) => AppContainer(body: HandsFacePage()),
            '/gym':(context) => AppContainer(body: GymPage()),
            '/run':(context) => AppContainer(body: RunPage()),
            '/walk':(context) => AppContainer(body: WalkPage()),
            '/sleep':(context) => AppContainer(body: SleepPage()),
            '/ventilate':(context) => AppContainer(body: VentilatePage()),
            '/drink':(context) => AppContainer(body: DrinkPage()),
            '/eat':(context) => AppContainer(body: EatPage()),
            '/info_hand':(context) => AppContainer(body: InfoHandPage()),
            '/info_distance':(context) => AppContainer(body: InfoDistancePage()),
            '/info_smartdes':(context) => AppContainer(body: InfoSmartdesPage()),
            '/info_sneeze':(context) => AppContainer(body: InfoSneezePage()),
            '/info_gym':(context) => AppContainer(body: InfoGymPage()),
            //'/info_run':(context) => AppContainer(body: InfoDistancePage()),
            //'/info_walk':(context) => AppContainer(body: InfoSmartdesPage()),
            '/info_sleep':(context) => AppContainer(body: InfoSleepPage()),
            '/info_ventilate':(context) => AppContainer(body: InfoVentilatePage()),
            '/info_drink':(context) => AppContainer(body: InfoDrinkPage()),
            '/info_eat':(context) => AppContainer(body: InfoEatPage()),
          },
        ));
  }
}
