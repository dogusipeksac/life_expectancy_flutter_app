import 'package:flutter/material.dart';

class GenderFuct extends StatelessWidget {
  final IconData icon;
  final String text;
  GenderFuct({this.icon, this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 40,
          color: Colors.black54,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
