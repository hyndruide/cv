import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './roundlevel_controller.dart';

class RoundLevel extends StatefulWidget {
  final int level;
  const RoundLevel({@required this.level, Key key})
      : assert(level != null && level >= 0 && level <= 4),
        super(key: key);
  RoundLevelState createState() => RoundLevelState(level: level);
}

class RoundLevelState extends State<RoundLevel> {
  /// Tracks if the animation is playing by whether controller is running.

  // Listen for changes to the controller to know when an animation has
  // started or stopped playing
  final int level;
  RoundLevelState({@required this.level});
  Artboard _riveArtboard;
  @override
  void initState() {
    super.initState();
    _loadRiveFile();
  }

  void _loadRiveFile() async {
    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load('assets/lang.riv').then(
      (data) async {
        final RiveFile file = RiveFile();

        // Load the RiveFile from the binary data.
        if (file.import(data)) {
          setState(() {
            _riveArtboard = file.mainArtboard
              ..addController(PourcentController(pourcent: level));
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _riveArtboard == null
        ? const SizedBox()
        : Rive(artboard: _riveArtboard);
  }
}
