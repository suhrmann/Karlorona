import 'package:flutter/material.dart';
import 'package:ich_mache_es_richtig_richtig_oder/notification-manager.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import './scoped-model/main-model.dart';

import './app-container.dart';
import './pages/about-page.dart';
import './pages/first-page.dart';
import './pages/second-page.dart';
import './pages/database-tester.dart';
import './pages/mascot-page.dart';
import './pages/activity-page.dart';
import './pages/init-quiz-page.dart';
import './activities/hand-page.dart';
import './activities/hygiene-page.dart';
import './activities/info-hand-page.dart';
import './activities/info-smartdes-page.dart';
import './activities/smartdes-page.dart';
import './activities/distance-page.dart';
import './activities/info-distance-page.dart';
import './activities/info-sneeze-page.dart';
import './activities/sneeze-page.dart';
import './activities/handsface-page.dart';
import './activities/psych-page.dart';
import './activities/health-page.dart';
import './activities/gym-page.dart';
import './activities/run-page.dart';
import './activities/walk-page.dart';
import './activities/drink-page.dart';
import './activities/eat-page.dart';
import './activities/sleep-page.dart';
import './activities/ventilate-page.dart';
import './activities/info-gym-page.dart';
import './activities/info-drink-page.dart';
import './activities/info-eat-page.dart';
import './activities/info-sleep-page.dart';
import './activities/info-ventilate-page.dart';

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
            '/': (context) => AppContainer(body: FirstPage()),
            '/secondpage': (context) => AppContainer(body: SecondPage()),
            '/dbtester': (context) => AppContainer(body: DatabaseTester()),
            '/quiz': (context) => AppContainer(body: InitQuizPage()),
            '/mascot': (context) => AppContainer(body: MascotPage()),
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
            '/info_distance': (context) => AppContainer(body: InfoDistancePage()),
            '/info_smartdes': (context) => AppContainer(body: InfoSmartdesPage()),
            '/info_sneeze': (context) => AppContainer(body: InfoSneezePage()),
            '/info_gym': (context) => AppContainer(body: InfoGymPage()),
            //'/info_run':(context) => AppContainer(body: InfoDistancePage()),
            //'/info_walk':(context) => AppContainer(body: InfoSmartdesPage()),
            '/info_sleep': (context) => AppContainer(body: InfoSleepPage()),
            '/info_ventilate': (context) => AppContainer(body: InfoVentilatePage()),
            '/info_drink': (context) => AppContainer(body: InfoDrinkPage()),
            '/info_eat': (context) => AppContainer(body: InfoEatPage()),

            '/about': (context) => AppContainer( body: AboutPage() )
          },
        ));
  }
}
