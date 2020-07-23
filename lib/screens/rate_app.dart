import 'package:app_review/app_review.dart';
import 'package:flutter/material.dart';


class Rating extends StatefulWidget {
  @override
  _RatingState createState() => new _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  initState() {
    super.initState();
    AppReview.getAppID.then((onValue) {
      setState(() {
        appID = onValue;
      });
    });
  }

  String appID = "";
  String output = "";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(

        appBar: new AppBar(
          leading: FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left,
                color: Colors.teal,
                size: 35,
              )),
       backgroundColor: Colors.white,
        ),
        body: new SingleChildScrollView(
          child: new ListBody(
            children: <Widget>[
              new Container(
                height: 40.0,
              ),
              new ListTile(
                leading: new Icon(Icons.info),
                title: new Text('App ID'),
                subtitle: new Text(appID),
                onTap: () {
                  AppReview.getAppID.then((onValue) {
                    setState(() {
                      output = onValue;
                    });
                    print(onValue);
                  });
                },
              ),
              new Divider(
                height: 20.0,
              ),
              new ListTile(
                leading: new Icon(
                  Icons.shop,
                ),
                title: new Text('View Store Page'),
                onTap: () {
                  AppReview.storeListing.then((onValue) {
                    setState(() {
                      output = onValue;
                    });
                    print(onValue);
                  });
                },
              ),
              new Divider(
                height: 20.0,
              ),
              new ListTile(
                leading: new Icon(
                  Icons.star,
                ),
                title: new Text('Request Review'),
                onTap: () {
                  AppReview.requestReview.then((onValue) {
                    setState(() {
                      output = onValue;
                    });
                    print(onValue);
                  });
                },
              ),
              new Divider(
                height: 20.0,
              ),
              new ListTile(
                leading: new Icon(
                  Icons.note_add,
                ),
                title: new Text('Write a New Review'),
                onTap: () {
                  AppReview.writeReview.then((onValue) {
                    setState(() {
                      output = onValue;
                    });
                    print(onValue);
                  });
                },
              ),
              new Divider(
                height: 20.0,
              ),
              new ListTile(
                title: new Text(output),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
