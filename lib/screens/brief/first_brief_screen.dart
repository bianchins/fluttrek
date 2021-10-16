import 'package:flutter/material.dart';

class FirstBriefScreen extends StatelessWidget {
  const FirstBriefScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Text(
          'WELCOME ABOARD!',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Good morning, Captain. As you know, you have been given command of the heavy Research/Battle Cruiser U.S.S. Lexington, standard fleet designation RCB-92. The Lexington is staffed with its full complement of 387 enlisted crewmen and 43 officers and is fully battle ready.',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'If you will allow me, I have prepared several briefings, including an intelligence report on the current state of affairs, an introduction to Lexington Class IX starships, and the commands at your disposal as captain.',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
