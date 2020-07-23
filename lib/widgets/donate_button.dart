import 'package:flutter/material.dart';

class DonateButton extends StatelessWidget {
  final Function onPressed;
  final String title;

  const DonateButton(this.onPressed, this.title);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Color(0xffF51546),
      elevation: 2,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'Images/donatee.png',
            color: Colors.white,
            height: 20,
            width: 20,
          ),
          SizedBox(width: 6),
          Text(
            title,
            style: const TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
