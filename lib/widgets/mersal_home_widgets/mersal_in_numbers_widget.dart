import 'package:flutter/material.dart';

class MersalInNumbers extends StatelessWidget {
  final int number;
  final String title;
  final String image;

  const MersalInNumbers({Key key, this.number, this.title, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [new BoxShadow(color: Colors.grey, blurRadius: 2)]),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Image.asset(
              image,
              width: 30,
              height: 30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            ( number > 999 ? (number/1000).toStringAsFixed(0) +'k' : '$number' )
            + '+\n$title',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
