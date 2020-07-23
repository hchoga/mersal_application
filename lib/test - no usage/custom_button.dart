import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final Color color;
  final String text;
  final Color highlightColor;
  final Color splashColor ;

  const CustomButton({Key key, this.onTap, this.color, this.text, this.highlightColor, this.splashColor }) ;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ()=> onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      elevation: 5,
      color: color,
      height: 25,
      minWidth: 90,
      splashColor: splashColor,
      highlightColor: highlightColor,
    );
  }
}