import 'package:flutter/material.dart';

class SecondBriefScreen extends StatelessWidget {
  const SecondBriefScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Text(
          'INTELLIGENT REPORT',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'As you probably know, the Skeptic Empire has declared war on the Union. The Vandal Empire has joined the hostilities in some areas but should be avoided if possible. As a result, a Skeptic invasion fleet and scattered Vandal ships are now present in part of Union territory.',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Your mission as commander of the Lexington is to secure a 64 quadrant section of the galaxy from the Skeptics. You may also be called to make rescues but remember that your primary objective is to eliminate the Skeptics.',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Skeptics are known to be present in this area but exact locations are unknown at this time. You will be required to scan for Skeptics as you move through the galaxy. He have made several StarBases available in this area as well, though we cannot give you their exact location as they are presently still being positioned.',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
