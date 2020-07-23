import 'package:flutter/material.dart';

class ClickableTile extends StatelessWidget {

  final String image;
  final String title;
  final Function onTap;
  final bool divider ;

  const ClickableTile({this.image, this.title, this.onTap, this.divider = true});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: Center(
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(image),
              ),
            ),
          ),
          SizedBox(width: 15),
          Flexible(
            flex: 8,
            //fit: BoxFit.,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(title,
                    style: const TextStyle(fontSize: 21, fontWeight: FontWeight.normal)),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: divider ? Divider(height: 1, color: Colors.grey) : SizedBox(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}