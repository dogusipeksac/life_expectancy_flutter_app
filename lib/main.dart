import 'package:flutter/material.dart';

import 'input_page.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //var olan tema üzerine değişiklik yapailirsiniz
      /*theme: ThemeData.dark().copyWith(
        brightness: Brightness.dark,
        primaryColor: Colors.yellow,
        accentColor: Colors.red,
        scaffoldBackgroundColor: Colors.black,
      ),   */
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlue,

      ),
      home: InputPage(),
    );
  }
}






































