import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'menu_tile.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: SafeArea( //to avoid notifications bar
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            MenuTile(
              image: 'Images/drawer/home.png',
              title: "Home",
              onTap: () => navigate(context, "Mersal Home"),
            ),
            MenuTile(
                image: 'Images/drawer/urgent.png',
                title: "Urgent cases",
                onTap: () => navigate(context, "/treat_patient/urgent", )),
            ////////////////// mfesh Urgent
            MenuTile(
                image: 'Images/drawer/chartiable.png',
                title: "Charitable activities",
                onTap: () => navigate(context, "Charitable")),
            MenuTile(
                image: 'Images/drawer/heart.png',
                title: "My Donation",
                onTap: () => navigate(context, 'My Donation')),

            //////////////////// Msh 3arefha
            //TODO: remove comment
//            ClickableTile(image: 'Images/drawer/zakatek.png', title: "Pay zakat"),
            MenuTile(
                image: 'Images/drawer/rate.png',
                title: "Rate the app",
                onTap: () => navigate(context, "Rate App")),
            /////////////////////
            MenuTile(
                image: 'Images/drawer/settings.png',
                title: "Settings",
                onTap: () => navigate(context, 'Settings')),
            MenuTile(
                image: 'Images/drawer/Info.png',
                title: "About Mersal",
                divider: false,
                onTap: () => navigate(context, "About Mersal")),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SocialMediaIcon(icon: 'Images/drawer/facebook.png',onTap: (){

                       _launchURL('https://www.facebook.com/Mersalfoundation');
                      },),
                      SocialMediaIcon(icon: 'Images/drawer/insta.png',onTap: (){
                        _launchURL('https://www.instagram.com/mersalcharity');
                      },),
                      SocialMediaIcon(icon: 'Images/drawer/youtube.png',
                      onTap: (){
                        _launchURL('https://www.youtube.com/channel/UC30Ek5Wl1us6LD6BLkegsHQ');
                      },
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

_launchURL(String url) async {

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class SocialMediaIcon extends StatelessWidget {
  final String icon;
  final Function onTap;


  const SocialMediaIcon({this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      iconSize: 30,
      onPressed: () => onTap(),
      icon: Image.asset(
        icon,
        width: 30,
        height: 30,
      ),
      // child: Image.asset(icon, width: 30, height: 30),
    );
  }
}

//here where you make navigating
navigate(final BuildContext context, final String route) {
  //TODO: screens with back button -> pushName
  //TODO: screens with drawer -> pushReplacementNamed
  Navigator.of(context).pop();
  Navigator.pushNamed(context, route);
  // stack overflow not working
//        bool isNewRouteSameAsCurrent = true;
//        Navigator.popUntil(context, (currentRoute) {
//          if (currentRoute.settings.name == route) {
//            isNewRouteSameAsCurrent = true;
//          }
//          return true;
//        });
//
//        if (!isNewRouteSameAsCurrent) {
//          Navigator.pushNamed(context, route);
//        }
}
