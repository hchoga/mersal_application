import 'package:flutter/material.dart';

import '../models/activity_model.dart'; //BTW "../" means go to the previous route(path)
import '../widgets/donation_card.dart';
import '../demo_data.dart';

//read me :)
/*
* this screen should display all user donations, so you'll have the user donations from the API
* and you also have access to all mersal projects,
* so we should extract all projects(cases) that related to user donation.
*
* by the way we may have to divide mersal projects into categories, to make it easier for our engine to do it,
* we should also make this process on the server not on the phone !!, if so, we'll get it from the API :)
* */


//TODO: chick final words for id dataType : int or String ?

class MyDonation extends StatelessWidget {

  //this logic took some time to implement :)
  //سمي الله علشان تشتغل :)
  //TODO: patient should be generic mersal case
  final List<Activity> _userCases = List.generate(userDonation.length, (index){
    return demoCases.firstWhere((item)=> item.id == userDonation[index].caseId );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () => Navigator.pop(context),
              child: Icon(
                Icons.chevron_left,
                color: Colors.teal,
                size: 35,
              )),
          title: Text('My Donation'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: _userCases.length,
            itemBuilder: (ctx, i) {
              return DonationCard(_userCases[i], userDonation[i]);
            }));
  }
}
