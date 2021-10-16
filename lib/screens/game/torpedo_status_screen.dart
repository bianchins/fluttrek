import 'package:flutter/material.dart';

class TorpedoStatusScreen extends StatelessWidget {
  const TorpedoStatusScreen({Key? key}) : super(key: key);

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
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          children: List.generate(9, (index) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Icon(Icons.airline_seat_flat, color: Colors.redAccent),
              ),
            );
          }),
        ),
      ),
    );
  }
}
