import 'package:flutter/material.dart';
import 'package:fluttrek/screens/brief/first_brief_screen.dart';
import 'package:fluttrek/screens/brief/second_brief_screen.dart';
import 'package:fluttrek/screens/game_screen.dart';
import 'package:fluttrek/widgets/fluttrek_button.dart';

class BriefScreen extends StatelessWidget {
  const BriefScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              children: const <Widget>[
                FirstBriefScreen(),
                SecondBriefScreen(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: SizedBox(
            height: 100,
            child: Center(
              child: FluttrekButton(
                onPressed: () {
                  if (controller.page == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GameScreen()),
                    );
                  } else {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                  }
                },
                child: const Text(
                  'Proceed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
