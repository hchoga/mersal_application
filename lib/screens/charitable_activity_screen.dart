import 'package:flutter/material.dart';
import 'package:mersal/models/charitableActivities_model.dart';

import '../models/activity_model.dart';
import '../widgets/item_card.dart';

class ActivityScreen extends StatelessWidget {
  static const String route = 'activity screen';

  @override
  Widget build(BuildContext context) {

  final CharitableData data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            leading: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () => Navigator.pop(context),
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.teal,
                  size: 35,
                )),
            title: Text(data.title),
            centerTitle: true,
          ),
        ),

        /*  *** FutureBuilder not needed any more ! ***

        *       since fetchActivity() called in mersal home
        *       this screen going to initialized every time
        *       you could remove future builder for sure
        * */
        body: FutureBuilder(
          future: fetchActivity(data.id),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

            if(snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());

            else if(snapshot.error != null)
              {
                print(snapshot.error);
                return Center(child: Text('connection error !'));
              }

            else return ListView.builder(
              itemCount: activitiesData[data.id].length,
              itemBuilder: (ctx, i) {
                return ItemCard(activitiesData[data.id][i]);
              });
          },

        ));
  }
}