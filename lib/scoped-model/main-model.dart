import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import './visible-state-model.dart';
import './database-model.dart';
import './sub-model.dart';
import './quiz-model.dart';

/// Die Klassen SubModel und DatabaseModel werden als Mixins "eingebunden"
/// Beachte: Namen können nicht doppelt vergeben werden => wg. Mixin
class MainModel extends Model
    with SubModel, DatabaseModel, QuizModel, VisibleStateModel {
  /// Showcase, um die Verwendung des ScopedModels zu demonstrieren
  bool _testValue = false;

  bool get testValue {
    return _testValue;
  }

  void changeTestValue(bool newValue) {
    _testValue = newValue;
    notifyListeners();
  }

  static MainModel of(BuildContext context) =>
      ScopedModel.of<MainModel>(context);

  AudioCache _audioCache = new AudioCache(
      fixedPlayer: AudioPlayer(), respectSilence: false, prefix: 'sounds/');

  AudioCache get audioPlayer {
    return _audioCache;
  }

  play(String filename) {
    _audioCache.play(filename);
  }

  stop() {
    _audioCache.fixedPlayer.stop();
  }
}
