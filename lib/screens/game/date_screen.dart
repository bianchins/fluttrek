import 'package:flutter/material.dart';

class DateScreen extends StatelessWidget {
  const DateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 100 * 20,
      height: MediaQuery.of(context).size.width / 100 * 20,
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: const Color(0xff000053),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Date',
                textAlign: TextAlign.center,
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                '3500.0',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
