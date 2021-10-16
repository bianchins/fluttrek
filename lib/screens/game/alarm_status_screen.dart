import 'package:flutter/material.dart';

class AlarmStatusScreen extends StatelessWidget {
  const AlarmStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 100 * 20,
      height: MediaQuery.of(context).size.width / 100 * 20,
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: const Color(0xff05aa05),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: const Center(
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            'Status\nGreen',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
