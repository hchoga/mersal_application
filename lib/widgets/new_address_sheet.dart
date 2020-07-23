import 'package:flutter/material.dart';

class CreateAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        textFormExtract('Area'),
        SizedBox(
          height: 20,
        ),
        textFormExtract('Address'),
        SizedBox(
          height: 20,
        ),
        textFormExtract('Street'),
        SizedBox(
          height: 20,
        ),
        textFormExtract('Building'),
        SizedBox(
          height: 20,
        ),
        textFormExtract('Floor'),
        SizedBox(
          height: 20,
        ),
        textFormExtract('Apartment No.'),
        SizedBox(
          height: 20,
        ),
        textFormExtract('Mobile Number'),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 25, right: 7),
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.lightBlue)),
                child: FlatButton(
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Widget textFormExtract(String hintText) {
  return TextFormField(
    decoration: InputDecoration(
        hintText: '$hintText',
        hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
  );
}
