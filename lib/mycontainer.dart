import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onPressed;
  MyContainer({this.color: Colors.white, this.child, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: color),
      ),
    );
  }
}
