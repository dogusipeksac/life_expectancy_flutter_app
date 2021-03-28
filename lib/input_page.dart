import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'mycontainer.dart';
import 'genderfuct.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliButton;
  double icilenSigara=0.0;
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
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Günde kaç sigara içiyorsunuz?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${icilenSigara.toInt()}",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    min: 0,
                    max: 50,
                    value: icilenSigara,
                    onChanged:(double newValue){
                    setState(() {
                      icilenSigara=newValue;
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
                        seciliButton = 'KADIN';
                      });
                    },
                    renk: seciliButton == 'KADIN'
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: GenderFuct(
                      icon: FontAwesomeIcons.venus,
                      text: "KADIN",
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    onPressed: () {
                      setState(() {
                        seciliButton = 'ERKEK';
                      });
                    },
                    renk: seciliButton == 'ERKEK'
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: GenderFuct(
                      icon: FontAwesomeIcons.mars,
                      text: "ERKEK",
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
}
