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
import './activities/Info/info-hand-page.dart';
import './activities/Info/info-smartdes-page.dart';
import './activities/hygiene/smartdes-page.dart';
import './activities/hygiene/distance-page.dart';
import './activities/Info/info-distance-page.dart';
import './activities/Info/info-sneeze-page.dart';
import './activities/hygiene/sneeze-page.dart';
import './activities/hygiene/handsface-page.dart';
import './activities/psych-page.dart';
import './activities/health-page.dart';
import './activities/health/gym-page.dart';
import './activities/health/run-page.dart';
import './activities/health/walk-page.dart';
import './activities/health/drink-page.dart';
import './activities/health/eat-page.dart';
import './activities/health/sleep-page.dart';
import './activities/hygiene/ventilate-page.dart';
import './activities/Info/info-gym-page.dart';
import './activities/Info/info-drink-page.dart';
import './activities/Info/info-eat-page.dart';
import './activities/Info/info-sleep-page.dart';
import './activities/Info/info-ventilate-page.dart';
import 'activities/Info/info-daystruct-page.dart';
import 'activities/Info/info-goal-page.dart';
import 'activities/Info/info-medien-page.dart';
import 'activities/Info/info-social-page.dart';
import 'activities/Info/info-yoga-page.dart';
import 'activities/psych/daystruct-page.dart';
import 'activities/psych/goal-page.dart';
import 'activities/psych/medien-page.dart';
import 'activities/psych/social-page.dart';
import 'activities/psych/yoga-page.dart';

void main() => runApp(Karlo());
class Karlo extends StatelessWidget {
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

            '/quiz': (context) => AppContainer(body: InitQuizPage()),

            // ACTIVITY pages
            '/activity': (context) => AppContainer(body: ActivityPage()),
            //activities
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
            '/daystruct': (context) => AppContainer(body: DaystructPage()),
            '/goal': (context) => AppContainer(body: GoalPage()),
            '/medien': (context) => AppContainer(body: MedienPage()),
            '/social': (context) => AppContainer(body: SocialPage()),
            '/yoga': (context) => AppContainer(body: YogaPage()),

            // INFO pages
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
            '/info_social': (context) => AppContainer(body: InfoSocialPage()),
            '/info_daystruct': (context) => AppContainer(body: InfoDaystructPage()),
            '/info_goal': (context) => AppContainer(body: InfoGoalPage()),
            '/info_medien': (context) => AppContainer(body: InfoMedienPage()),
            '/info_yoga': (context) => AppContainer(body: InfoYogaPage()),

            // DEBUGGIN
            '/test_page': (context) => AppContainer(body: TestPage()),
            '/dbtester': (context) => AppContainer(body: DatabaseTester()),
          },
        ));
  }
}
