import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mersal/widgets/new_address_sheet.dart';
confirmDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        title: Text('Are you sure ?'),
        content: Text(
            'you will donate by 5LE '),
        actions: <Widget>[
          FlatButton(
            child: const Text('CANCEL'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: const Text('ACCEPT'),
            onPressed: () {
              ackAlert(context);
            },
          )
        ],
      );
    },
  );
}

ackAlert(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 50,
        ),
        content: const Text(
          'Successfully Donated',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


addressDialog(BuildContext context) {
  return showGeneralDialog(
    context: context,
    barrierColor: Colors.black12.withOpacity(0.6), // background color
    barrierDismissible: false, // should dialog be dismissed when tapped outside
    barrierLabel: "Dialog", // label for barrier
    transitionDuration: Duration(milliseconds: 400), // how long it takes to popup dialog after button click
    pageBuilder: (_, __, ___) { // your widget implementation
      return SizedBox.expand( // makes widget fullscreen
        child: Padding(
          padding: EdgeInsets.only(top: 50,bottom: 35),
          child: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Padding(
            padding: EdgeInsets.all(20),
            child: CreateAddress()
          ),
          ),
        )
      );
    },
  );
}