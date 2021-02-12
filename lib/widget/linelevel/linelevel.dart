import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './linelevel_controller.dart';

class LineLevel extends StatefulWidget {
  const LineLevel({@required this.level, @required this.name, Key key})
      : super(key: key);
  final int level;
  final String name;

  @override
  LineLevelState createState() => LineLevelState(level: level, name: name);
}

class LineLevelState extends State<LineLevel> {
  GlobalKey<State> key = new GlobalKey();

  final int level;
  final String name;

  LineLevelState({@required this.level, @required this.name});
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
        final List<RiveFile> filelist = [];
        filelist.add(RiveFile());
        filelist.add(RiveFile());
        // Load the RiveFile from the binary data.
        if (filelist[0].import(data) && filelist[1].import(data)) {
          setState(() {
            _riveArtboard = filelist[0].mainArtboard
              ..addController(LineLevelController(pourcent: level, name: name));
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
