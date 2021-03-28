import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'mycontainer.dart';
import 'genderfuct.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String selectedButton;
  double numberOfCigarettes = 0.0;
  double numberOfExercises = 0.0;
  int humanSize = 170;
  int humanKilo=60;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    child: buildRowOutLineButton('SIZE'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    child: buildRowOutLineButton('KILO'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "How many times a week do you exercise?",
                    style: textStyle,
                  ),
                  Text(
                    "${numberOfExercises.toInt()}",
                    style: numberStyle,
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    value: numberOfExercises,
                    divisions: 7,
                    onChanged: (double newValue) {
                      setState(() {
                        numberOfExercises = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "How many cigarettes do you smoke a day?",
                    style: textStyle,
                  ),
                  Text(
                    "${numberOfCigarettes.toInt()}",
                    style: numberStyle,
                  ),
                  Slider(
                    min: 0,
                    max: 50,
                    value: numberOfCigarettes,
                    onChanged: (double newValue) {
                      setState(() {
                        numberOfCigarettes = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    onPressed: () {
                      setState(() {
                        selectedButton = 'FEMALE';
                      });
                    },
                    color: selectedButton == 'FEMALE'
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: GenderFuct(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    onPressed: () {
                      setState(() {
                        selectedButton = 'MALE';
                      });
                    },
                    color: selectedButton == 'MALE'
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: GenderFuct(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
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

  Row buildRowOutLineButton(String text) {

    return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //çok güzel birşey unutma bunu rotatedbox
                      RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            text,
                            style: textStyle,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            text=='SIZE'?humanSize.toString():humanKilo.toString(),
                            style: numberStyle,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 36,
                            height: 36,
                            // ignore: deprecated_member_use
                            child: OutlineButton(

                              borderSide: BorderSide(color: Colors.lightBlue,width: 1),
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 10,
                              ),
                              onPressed: () {
                                setState(() {
                                  text=='SIZE'?humanSize++:humanKilo++;

                                });
                              },
                            ),
                          ),
                          // ignore: deprecated_member_use
                          ButtonTheme(
                            minWidth: 36,
                            height: 36,
                            child: OutlineButton(
                              borderSide: BorderSide(color: Colors.lightBlue,width: 1),
                              onPressed: () {
                                setState(() {
                                  text=='SIZE'?humanSize--:humanKilo--;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
  }
}
