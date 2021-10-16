import 'package:flutter/material.dart';
import 'package:fluttrek/screens/game/alarm_status_screen.dart';
import 'package:fluttrek/screens/game/date_screen.dart';
import 'package:fluttrek/screens/game/quadrant_map.dart';
import 'package:fluttrek/screens/game/torpedo_status_screen.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                QuadrantMap(),
                Container(
                  height: MediaQuery.of(context).size.width / 100 * 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      DateScreen(),
                      AlarmStatusScreen(),
                      TorpedoStatusScreen()
                    ],
                  ),
                ),
              ],
            ),
            Row(),
          ]),
        ),
      ),
    );
  }
}
