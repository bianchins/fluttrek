import 'package:flutter/material.dart';

class QuadrantMap extends StatelessWidget {
  const QuadrantMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 100 * 70,
      height: MediaQuery.of(context).size.width / 100 * 70,
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: const Color(0xff000053),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 9,
        children: List.generate(81, (index) {
          if (index == 0) {
            return const SizedBox.shrink();
          } else if (index < 9) {
            return Center(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  '$index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            );
          } else if (index % 9 == 0) {
            return Center(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  (index ~/ 9).toString(),
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            );
          } else {
            return const Center(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  '.',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
            );
          }
        }),
      ),
    );
  }
}
