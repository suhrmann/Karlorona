import 'package:flutter/material.dart';

import './notification-manager.dart';
import 'package:scoped_model/scoped_model.dart';

import './scoped-model/main-model.dart';

import './app-container.dart';
import './pages/test-page.dart';
import './pages/about-page.dart';
import './pages/second-page.dart';
import './pages/database-tester.dart';
import './pages/mascot-page.dart';
import './pages/activity-page.dart';
import './pages/init-quiz-page.dart';
import './activities/hygiene/hand-page.dart';
import './activities/hygiene-page.dart';
import './activities/info/info-hand-page.dart';
import './activities/info/info-smartdes-page.dart';
import './activities/hygiene/smartdes-page.dart';
import './activities/hygiene/distance-page.dart';
import './activities/info/info-distance-page.dart';
import './activities/info/info-sneeze-page.dart';
import './activities/hygiene/sneeze-page.dart';
import './activities/hygiene/handsface-page.dart';
import './activities/psych-page.dart';
import './activities/health-page.dart';
import './activities/gym-page.dart';
import './activities/health/run-page.dart';
import './activities/health/walk-page.dart';
import './activities/health/drink-page.dart';
import './activities/health/eat-page.dart';
import './activities/health/sleep-page.dart';
import './activities/hygiene/ventilate-page.dart';
import './activities/info/info-gym-page.dart';
import './activities/info/info-drink-page.dart';
import './activities/info/info-eat-page.dart';
import './activities/info/info-sleep-page.dart';
import './activities/info/info-ventilate-page.dart';

void main() => runApp(IchMacheEsRichtigODER());

class IchMacheEsRichtigODER extends StatelessWidget {
  final NotificationManager notificationManager = NotificationManager();

  @override
  StatelessElement createElement() {
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    // Init notifications
    notificationManager.initNotifications(context);

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
            '/': (context) => AppContainer(body: MascotPage()),
            '/about': (context) => AppContainer(body: AboutPage()),
            '/secondpage': (context) => AppContainer(body: SecondPage()),
            '/dbtester': (context) => AppContainer(body: DatabaseTester()),
            '/quiz': (context) => AppContainer(body: InitQuizPage()),
            '/activity': (context) => AppContainer(body: ActivityPage()),
            '/infect': (context) => AppContainer(body: HygienePage()),
            '/health': (context) => AppContainer(body: HealthPage()),
            '/psych': (context) => AppContainer(body: PsychPage()),
            '/hand': (context) => AppContainer(body: HandPage()),
            '/distance': (context) => AppContainer(body: DistancePage()),
            '/smartdes': (context) => AppContainer(body: SmartdesPage()),
            '/sneeze': (context) => AppContainer(body: SneezePage()),
            '/handsface': (context) => AppContainer(body: HandsFacePage()),
            '/gym': (context) => AppContainer(body: GymPage()),
            '/run': (context) => AppContainer(body: RunPage()),
            '/walk': (context) => AppContainer(body: WalkPage()),
            '/sleep': (context) => AppContainer(body: SleepPage()),
            '/ventilate': (context) => AppContainer(body: VentilatePage()),
            '/drink': (context) => AppContainer(body: DrinkPage()),
            '/eat': (context) => AppContainer(body: EatPage()),
            '/info_hand': (context) => AppContainer(body: InfoHandPage()),
            '/info_distance': (context) =>
                AppContainer(body: InfoDistancePage()),
            '/info_smartdes': (context) =>
                AppContainer(body: InfoSmartdesPage()),
            '/info_sneeze': (context) => AppContainer(body: InfoSneezePage()),
            '/info_gym': (context) => AppContainer(body: InfoGymPage()),
            //'/info_run':(context) => AppContainer(body: InfoDistancePage()),
            //'/info_walk':(context) => AppContainer(body: InfoSmartdesPage()),
            '/info_sleep': (context) => AppContainer(body: InfoSleepPage()),
            '/info_ventilate': (context) =>
                AppContainer(body: InfoVentilatePage()),
            '/info_drink': (context) => AppContainer(body: InfoDrinkPage()),
            '/info_eat': (context) => AppContainer(body: InfoEatPage()),

            // DEBUGGIN
            '/test_page': (context) => AppContainer(body: TestPage()),
          },
        ));
  }
}
