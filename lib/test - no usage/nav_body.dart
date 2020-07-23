import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/donate_button.dart';
import '../models/nav_body_data.dart';

class NavBody extends StatelessWidget {
  final List<NavBodyData> data; //to handle many tiles in the same screen
  final Function donateButton; // forwarded to donateButton only !!
  const NavBody({this.data, this.donateButton});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = List.generate(data.length, (i) {
      return Padding(
        padding: const EdgeInsets.only(right: 6, left: 6, bottom: 8),

        //this structure is more easier than the customized old one, keep it if u like it
        //TODO: choose a structure
//        child: Card(
//            elevation: 2,
//            shape:
//                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//            child: ListTile(
//              leading: Image.asset(
//                data[i].image,
//                width: 30,
//                height: 30,
//              ),
//              title: Text(
//                data[i].title,
//                style: TextStyle(fontSize: 18),
//              ),
//              trailing: Icon(Icons.chevron_right),
//            )

       child: Container(
            decoration: BoxDecoration(
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
              borderRadius: new BorderRadius.all(Radius.circular(8)),
            ),
          child: Row(
              children: <Widget>[
                SizedBox(width: 8),
                Image.asset(
                  data[i].image,
                  width: 30,
                  height: 30,
                ),
                SizedBox(width: 20),

//                Padding(
//                  padding: const EdgeInsets.symmetric(vertical: 5),
//                  child: Text(
//                    data[i].title,
//                    style: TextStyle(fontSize: 18),
//                  ),
//                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child:
                  data[i].clickableText,


                ),


                Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.chevron_right),
                )
              ],
            ),

            ),
      );
    });
    children.add(DonateButton(donateButton,'Donate NOW'));
    return Column(
      children: children,
      //  DonateButton((){}),
    );
  }
}
