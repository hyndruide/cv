import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class MultiRive extends StatefulWidget {
  const MultiRive({Key key}) : super(key: key);

  @override
  _MultiRiveState createState() => _MultiRiveState();
}

class _MultiRiveState extends State<MultiRive> {
  /// Tracks if the animation is playing by whether controller is running.
  bool start = false;

  Artboard _riveArtboard;
  @override
  void initState() {
    super.initState();

    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load('assets/multitask.riv').then(
      (data) async {
        final file = RiveFile();

        // Load the RiveFile from the binary data.
        if (file.import(data)) {
          // The artboard is the root of the animation and gets drawn in the
          // Rive widget.
          final artboard = file.mainArtboard;
          // Add a controller to play back a known animation on the main/default
          // artboard.We store a reference to it so we can toggle playback.
          artboard.addController(SimpleAnimation('idle'));
          setState(() => _riveArtboard = artboard);
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
