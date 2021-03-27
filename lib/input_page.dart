import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class GenderFuct extends StatelessWidget {
  final IconData icon;
  final String text;
  GenderFuct({this.icon,this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        Icon(
          icon,
          size: 40,
          color: Colors.black54,),
        SizedBox(height: 10,),
        Text(
         text,
          style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight:FontWeight.bold),
        ),
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget child;
  MyContainer({this.renk: Colors.white, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: renk),
    );
  }
}
