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
      body: Column(
          children: <Widget>[

            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: MyContainer(),
                  ),  Expanded(
                    flex: 1,
                    child: MyContainer(),
                  ),
                ],
              ),

            ),  Expanded(
              flex: 1,
              child: MyContainer(),
            ),Expanded(
              flex: 1,
              child: MyContainer(),
            ),Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: MyContainer(renk: Colors.red),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyContainer(renk: Colors.yellow,),
                  ),
                ],
              ),
            ),
          ],

      ),

      //  ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color renk;
  MyContainer({this.renk:Colors.white});
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: renk
      ),
    );
  }
}
