import 'package:flutter/material.dart';

///used in drawer menu and settings

class MenuTile extends StatelessWidget {
  final String image;
  final String title;
  final Function onTap;
  final bool divider;

  const MenuTile({this.image, this.onTap, this.divider = true, this.title});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Center(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(image),
              ),
            ),
          ),
          SizedBox(width: 20),
          Flexible(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 8),
                divider
                    ? Divider(height: 2, color: Colors.grey)
                    : SizedBox(height: 2),
              ],
            ),
          )
        ],
      ),
    );
  }
}