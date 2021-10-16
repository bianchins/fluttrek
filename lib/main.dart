import 'package:flutter/material.dart';
import 'package:fluttrek/screens/welcome_screen.dart';

void main() {
  runApp(const Fluttrek());
}

class Fluttrek extends StatelessWidget {
  const Fluttrek({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutTrek',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff0100a9),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
              fontFamily: 'MorePerfectDOSVGA',
            ),
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
    );
  }
}
