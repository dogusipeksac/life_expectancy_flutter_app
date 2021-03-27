import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MyContainer.dart';
import 'GenderFuct.dart';

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
                ),
                Expanded(
                  flex: 1,
                  child: MyContainer(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: MyContainer(),
          ),
          Expanded(
            flex: 1,
            child: MyContainer(),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    child: GenderFuct(icon: FontAwesomeIcons.venus,text: "KADIN",),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    child: GenderFuct(icon: FontAwesomeIcons.mars,text: "ERKEK",),
                  ),
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




