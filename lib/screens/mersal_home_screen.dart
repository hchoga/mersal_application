import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:mersal/models/sponsors_model.dart';
import 'sponsors_screen.dart';
import '../demo_data.dart';
import '../models/charitableActivities_model.dart';
import '../providers/projects.dart';
import '../widgets/mersal_home_widgets/home_viewer.dart';
import '../widgets/mersal_home_widgets/mersal_in_numbers_widget.dart';
import '../widgets/mersal_home_widgets/project_card.dart';
import '../widgets/drawer_menu.dart';
import '../widgets/activity_tile.dart';
import 'package:mersal/models/sponsors_model.dart';
class MersalHome extends StatefulWidget {

  @override
  _MersalHomeState createState() => _MersalHomeState();
}

class _MersalHomeState extends State<MersalHome> {
  @override
  void initState() {
    Provider.of<Projects>(context,listen: false).fetchProjects();
    fetchCharitableActivities();
    fetchSponsorsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDFDFDF),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            iconTheme: new IconThemeData(color: Colors.teal),
            title: Text('Mersal'),
            centerTitle: true,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'Images/mersal.jpg', // 'Images/Logo.png',
                ),
              )
            ],
          ),
        ),
        drawer: DrawerMenu(),
        body: ListView(
          children: <Widget>[
            SizedBox(
                height: 150,
                child: Carousel(
                  images: [ExactAssetImage("Images/Slider1.png")],
                  showIndicator: false,
                  borderRadius: false,
                )),
            SizedBox(height: 10),

            //you may refactor this to pass data to see more button
            /// Charitable activities
            HomeViewer(
              title: 'Charitable activities',
              route: 'Charitable',
              listHeight: 150,
              listLength: charitableList.length,
              itemBuilder: (BuildContext context, int index) {
                return ActivityTile(data: charitableList[index]);
              },
            ),

            SizedBox(height: 10),

            /// Mersal Project
            HomeViewer(
              title: 'Mersal Projects',
              route: "Mersal Projects",
              listHeight: 300,
              listLength: Provider.of<Projects>(context).items.length,
              itemBuilder: (BuildContext context, int index) {
                return ProjectCard(Provider.of<Projects>(context).items[index]) ;
              }
            ),

            SizedBox(height: 10),

            //TODO: data handle - padding for all children
            /// sponsors
            HomeViewer(
              title: 'Our Sponsors',
              route: 'Sponsors',
              listHeight: 120,
              listLength: sponsorList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: SponsorsItem(
                    image: sponsorList[index].imageUrl,
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Mersal in numbers ",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.teal, fontSize: 24),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MersalInNumbers(
                          title: 'Donors',
                          number: 10000,
                          image: 'Images/settings/donors.png'),
                      MersalInNumbers(
                          title: 'Projects',
                          number: 20,
                          image: 'Images/settings/projects.png'),
                      MersalInNumbers(
                          title: 'Donations',
                          number: 36000,
                          image: 'Images/settings/donation.png'),
                    ],
                  ),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ],
        ));
  }
}
