import 'dart:ui';
import 'package:flutter/material.dart';

Path createAnimatedPath(Path originalPath, double animationPercent,
    {double startAt = 0.0}) {
  // ComputeMetrics can only be iterated once!

  animationPercent = animationPercent - startAt;
  if (animationPercent <= 0.0) animationPercent = 0.0;
  if (startAt != 0.0) {
    animationPercent = animationPercent / (1.0 - startAt);
    if (animationPercent >= 1.0) animationPercent = 1.0;
    print(animationPercent);
  }

  final totalLength = originalPath
      .computeMetrics()
      .fold(0.0, (double prev, PathMetric metric) => prev + metric.length);

  final currentLength = totalLength * animationPercent;

  return extractPathUntilLength(originalPath, currentLength);
}

Path extractPathUntilLength(
  Path originalPath,
  double length,
) {
  var currentLength = 0.0;

  final path = new Path();

  var metricsIterator = originalPath.computeMetrics().iterator;

  while (metricsIterator.moveNext()) {
    var metric = metricsIterator.current;

    var nextLength = currentLength + metric.length;

    final isLastSegment = nextLength > length;
    if (isLastSegment) {
      final remainingLength = length - currentLength;
      final pathSegment = metric.extractPath(0.0, remainingLength);

      path.addPath(pathSegment, Offset.zero);
      break;
    } else {
      // There might be a more efficient way of extracting an entire path
      final pathSegment = metric.extractPath(0.0, metric.length);
      path.addPath(pathSegment, Offset.zero);
    }

    currentLength = nextLength;
  }

  return path;
}

class AnimatedPathPainter extends CustomPainter {
  final Animation<double> _animation;

  AnimatedPathPainter(this._animation) : super(repaint: _animation);

  Path _firstPath(Size size) {
    return Path()
      ..moveTo(20, size.height)
      ..lineTo(20, 50);
  }

  Path _secondPath(Size size) {
    return Path()
      ..moveTo(20, size.height * 2 / 3)
      ..lineTo(size.width / 3, size.height * 2 / 3);
  }

  Path _thirdPath(Size size) {
    return Path()
      ..moveTo(20, size.height / 3)
      ..lineTo(size.width / 3, size.height / 3);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;

    final animationPercent = this._animation.value;
    final path = createAnimatedPath(_firstPath(size), animationPercent);
    final path2 = createAnimatedPath(_secondPath(size), animationPercent,
        startAt: 1.1 / 3);

    final path3 = createAnimatedPath(_thirdPath(size), animationPercent,
        startAt: 2.2 / 3);
    canvas.drawPath(path, paint);
    canvas.drawPath(path2, paint);
    canvas.drawPath(path3, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> with TickerProviderStateMixin {
  AnimationController _controller;
  AnimationController _controllertext1;
  AnimationController _controllertext2;
  Animation<double> animatedtext1;
  Animation<double> opactext1;
  Animation<double> animatedtext2;
  Animation<double> opactext2;
  @override
  void initState() {
    super.initState();
    _controller =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _controllertext1 =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _controllertext2 =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));

    _controller.stop();
    _controller.reset();
    _controller.forward();

    animatedtext1 =
        Tween<double>(begin: 2.43, end: 2.63).animate(_controllertext1)
          ..addListener(() {
            setState(() {
              // The state that has changed here is the animation object’s value.
            });
          });
    opactext1 = Tween<double>(begin: -4.0, end: 1.0).animate(_controllertext1)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
    _controllertext1.forward();
    animatedtext2 =
        Tween<double>(begin: 1.66, end: 1.96).animate(_controllertext2)
          ..addListener(() {
            setState(() {
              // The state that has changed here is the animation object’s value.
            });
          });
    opactext2 = Tween<double>(begin: -2.0, end: 1.0).animate(_controllertext2)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
    _controllertext2.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: AnimatedPathPainter(_controller),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height *
                (1 - animatedtext1.value / 3),
            left: MediaQuery.of(context).size.width / 2.5,
            child: Opacity(
              opacity: opactext1.value < 0 ? 0 : opactext1.value,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                        text: "2003 à 2005", style: TextStyle(fontSize: 30)),
                    TextSpan(
                        text: "\nDeug Mathématique\net Informatique\n",
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                    TextSpan(
                        text: "Université Joseph Fourrier\nGrenoble (38)",
                        style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height *
                  (1 - animatedtext2.value / 3),
              left: MediaQuery.of(context).size.width / 2.5,
              child: Opacity(
                  opacity: opactext2.value < 0 ? 0 : opactext2.value,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(text: "2003", style: TextStyle(fontSize: 30)),
                        TextSpan(
                            text:
                                "\nBaccalauréat Science\net technologie\nde Laboratoire\n",
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                        TextSpan(
                            text: "Lycée Porte de l’Oisans\nVizille (38)",
                            style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  )))
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _controllertext1.dispose();
    _controllertext2.dispose();
    super.dispose();
  }
}
