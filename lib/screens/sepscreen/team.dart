import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> with TickerProviderStateMixin {
  bool _first = true;
  AnimationController _controller2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller2 =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
          ..addListener(() {
            setState(() {});
          });
    _controller2.repeat(
        min: 0.0, max: 1.0, reverse: true, period: Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    if (_controller2.value >= 0.5) {
      setState(() {
        _first = false;
      });
    } else {
      setState(() {
        _first = true;
      });
    }
    final String assetName1 = 'assets/images/anime_team_1.svg';
    final String assetName2 = 'assets/images/anime_team_2.svg';
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: 200.0,
              height: 300.0,
              child: AnimatedCrossFade(
                crossFadeState: _first
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(milliseconds: 500),
                firstChild: SvgPicture.asset(
                  assetName1,
                  semanticsLabel: 'Team1',
                  color: Colors.white,
                ),
                secondChild: SvgPicture.asset(
                  assetName2,
                  semanticsLabel: 'Team2',
                  color: Colors.white,
                ),
                layoutBuilder: (topChild, topchildk, btochild, botchildk) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        key: botchildk,
                        left: 200.0,
                        top: 200.0,
                        child: btochild,
                      ),
                      Positioned(
                        key: topchildk,
                        child: topChild,
                      )
                    ],
                  );
                },
              )),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text(
              "Travail en équipe",
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller2.dispose();
    super.dispose();
  }
}
