import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class PourcentController extends RiveAnimationController<RuntimeArtboard> {
  final int pourcent;
  PourcentController({@required this.pourcent});

  /// Our four different animations
  LinearAnimationInstance _idle;
  static const List<double> pourcent_val = [40, 85, 130, 180];

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
