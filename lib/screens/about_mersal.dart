import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mersal/widgets/drawer_menu.dart';

class AboutMersal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          iconTheme: new IconThemeData(color: Colors.teal),
          title: Row(
            children: <Widget>[
              Spacer(
                flex: 3,
              ),
              Image.asset('Images/Logo.png'),
            ],
          ),
          backgroundColor: Colors.white,
        ),
      ),
      drawer: Container(
        width: 350,
        child: Drawer(child: DrawerMenu()),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.only(top: 8,left :15),
                  child: Text(
                      "About Mersal",
                      style: TextStyle(color: Colors.teal, fontSize: 30),

                  ),
                ),
                Spacer(flex: 2,)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 8,bottom: 8,right: 8),
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1,
                      // has the effect of softening the shadow
                      spreadRadius: 0,
                      // has the effect of extending the shadow
                      offset: Offset(
                        1.0, // horizontal, move right 10
                        1.0, // vertical, move down 10
                      ),
                    )
                  ],
                  color: Colors.white,
                  border: new Border.all(color: Colors.white),
                  borderRadius: new BorderRadius.all(Radius.circular(5)),
                ),
                width: width * 0.9,
                height: height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                        "Mersal was founded in 2015, aiming to be the best provider of all kinds of medical services and to be an effective part in the act of spreading medical awareness in Egypt and Arab Notion Mesral is working to analyses the gaps and drawbacks of the medical system and the public health Insurarnce in Egypt and provide solutions for them by providing high quality medical services for everyone who needs it, without any discrimination Establishing a permanent medical insurance system working parallelly with the govermental insurance Reaching the best value for donors fund."
                    ,style: TextStyle(fontSize: 19),),
                  ),
                ),
              ),
            )
            ,Padding(
              padding: const EdgeInsets.only(left: 15,top: 8,bottom: 8,right: 8),
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1,
                      // has the effect of softening the shadow
                      spreadRadius: 0,
                      // has the effect of extending the shadow
                      offset: Offset(
                        1.0, // horizontal, move right 10
                        1.0, // vertical, move down 10
                      ),
                    )
                  ],
                  color: Colors.white,
                  border: new Border.all(color: Colors.white),
                  borderRadius: new BorderRadius.all(Radius.circular(5)),
                ),
                width: width * 0.9,
                height: 100,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[ Spacer(flex: 1,),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text("Developed by",style: TextStyle(color: Colors.teal,fontSize: 18),),
                        ),
                        Spacer(flex: 18,)
                      ],
                    ),
                    Container(
                      width: width,
                        height: height*0.1,
                        child: Center(
                            child: Image.asset(
                                "Images/akhbar.png",))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
