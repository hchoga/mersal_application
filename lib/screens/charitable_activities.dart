import 'package:flutter/material.dart';

import '../models/charitableActivities_model.dart';
import '../widgets/drawer_menu.dart';
import '../widgets/activity_tile.dart';

class CharitableActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text('Charitable Activites'),
          centerTitle: true,
        ),
      ),
      drawer: DrawerMenu(),
      body: FutureBuilder(
        future: charitableList == null ? fetchCharitableActivities() : null,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());

          else if (snapshot.error != null) {
          print(snapshot.error);
            return Center(child: Text('an Error occurred '));
          }
          else
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,

                //child aspect ratio
                childAspectRatio: 13 / 15,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              shrinkWrap: true,
              itemCount: charitableList.length,
              itemBuilder: (context, i) {
                return ActivityTile(data: charitableList[i]);
              },
            );
        },
      ),
    );
  }
}
