import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './linelevel_controller.dart';

class LineLevel extends StatefulWidget {
  const LineLevel({@required this.level, Key key})
      : assert(level != null && level >= 0 && level < 10),
        super(key: key);
  final int level;

  @override
  LineLevelState createState() => LineLevelState(level: level);
}

class LineLevelState extends State<LineLevel> {
  GlobalKey<State> key = new GlobalKey();

  final int level;

  LineLevelState({@required this.level});
  Artboard _riveArtboard;
  @override
  void initState() {
    super.initState();
    _loadRiveFile();
  }

  void _loadRiveFile() async {
    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load('assets/linear_level.riv').then(
      (data) async {
        final RiveFile file = RiveFile();

        // Load the RiveFile from the binary data.
        if (file.import(data)) {
          setState(() {
            _riveArtboard = file.mainArtboard
              ..addController(LineLevelController(pourcent: level));
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
