import 'package:flutter/material.dart';

import '../main.dart';

class GridViewNumberPage extends StatelessWidget {
  final numbers = List.generate(21, (index) => '$index');
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('GridView')),
        ),
        body: buildGridView(),
      );

  Widget buildGridView() => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        padding: const EdgeInsets.all(4),
        controller: controller,
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          final item = numbers[index];

          return buildNumber(item);
        },
      );

  Widget buildNumber(String number) => Container(
        color: Colors.cyan,
        child: GridTile(
          child: Center(
            child: Text(
              number,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
}
