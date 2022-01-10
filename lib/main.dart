import 'package:flutter/material.dart';

import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GridView',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: GridViewNumberPage(),
      );
}
