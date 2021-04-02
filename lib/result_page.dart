import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'constants.dart';
import 'calculate.dart';
import 'user_data.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;

  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Result")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(flex: 8,
              child: Center(
                  child: Text(
                    "Life Expectancy:"+Calculate(_userData).calculateFonct().round().toString(),style: textStyle,))),
          Expanded(flex: 1,
            child: FlatButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("BACK",style: textStyle,),
            ),
          ),
        ],
      ),
    );
  }
}
