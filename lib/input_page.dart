import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Life Expectancy',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Form Area",
          /*Theme.of(context).primaryColor.toString(),*/
          /*style: TextStyle(fontSize: 25),*/
        ),
      ),
      floatingActionButton:
      /*Theme(
        data: ThemeData(
          //yukarı doğru çıktığında ilk karşılaştıgın temayı al
          accentColor: Theme.of(context).primaryColor,
        ),                                            */
      FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      //  ),
    );
  }
}
