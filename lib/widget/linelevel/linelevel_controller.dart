import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class LineLevelController extends RiveAnimationController<RuntimeArtboard> {
  final int pourcent;
  final String name;

  double timeremaining;
  LineLevelController({@required this.pourcent, @required this.name});

  LinearAnimationInstance _idle;
  static const List<double> pourcent_val = [
    22.0,
    60.0,
    83.0,
    101.0,
    115.0,
    131.0,
    146.0,
    163.0,
    182.0,
    240
  ];

  @override
  bool init(RuntimeArtboard artboard) {
    _idle = artboard.animationByName('idle');
    isActive = true;
    return _idle != null;
  }

  @override
  void apply(RuntimeArtboard artboard, double elapsedSeconds) {
    // Idle animation

    if (_idle.time <= (pourcent == 0 ? 0 : (pourcent_val[pourcent - 1] / 60))) {
      _idle.animation.apply(_idle.time, coreContext: artboard);
      _idle.advance(elapsedSeconds);
    }
  }

  @override
  void dispose() {}

  @override
  void onActivate() {}

  @override
  void onDeactivate() {}
}
