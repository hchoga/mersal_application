import 'package:flutter/material.dart';
import 'package:mersal/widgets/donate_button.dart';
import '../Screens/donation_sheet.dart';

startDonation(context) {
  showModalBottomSheet(
      context: context,
      builder: (_) {
        return DonationTabs();
      });
}

class DonationTabs extends StatefulWidget {
  @override
  _DonationTabsState createState() => _DonationTabsState();
}

class _DonationTabsState extends State<DonationTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(

          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: new Image.asset(
                        'Images/donatee.png',
                        width: 25,
                        height: 25,
                      )),
                  SizedBox(width: 5),
                  Text(
                    "Donate",
                    style: const TextStyle(color: Colors.teal, fontSize: 40),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35 ),
                child: Divider(
                  height: 20,
                  color: Colors.grey,
                ),
              ),
              TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,

                tabs: <Widget>[
                  Tab(icon: Image.asset("Images/sms.png",color: Colors.teal,height: 35,width: 35,), text: "SMS"),
                  Tab(icon: Image.asset("Images/credit-card.png",color: Colors.teal,height: 35,width: 35),text: "Credit Card"),
                  Tab(icon: Image.asset("Images/mandob.png",color: Colors.teal,height: 35,width: 35),text: "Request \nan agent"),
                ],
              ),
            ],
          ), preferredSize: Size.fromHeight(155),
        ),
        body: TabBarView(
          children: <Widget>[
            smsData(),
            creditCardData(),
            agentData()

          ],
        ),
      ),
    );
  }
}

Widget smsData() {
  return Column(
    children: <Widget>[
      Container(
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
            borderRadius: new BorderRadius.all(Radius.circular(8)),
          ),
          width: 360,
          height: 35,
          child: Row(
            children: <Widget>[
              Image.asset("Images/cat.png",
                width: 30,
                height: 30,
              ),
              SizedBox(width: 5),
              Text(
                'Choose a Charitable activity',
                style: TextStyle(fontSize: 18),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.chevron_right),
              )
            ],
          )),
    //  DonateButton((){}),
    ],
  );
}

Widget creditCardData() {
  return Column(
    children: <Widget>[
      Container(
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
            borderRadius: new BorderRadius.all(Radius.circular(8)),
          ),
          width: 360,
          height: 35,
          child: Row(
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                child: Center(
                  child: Image.asset("Images/amount.png"),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Amount',
                style: TextStyle(fontSize: 18),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.chevron_right),
              )
            ],
          )),

      //TODO: change flatButton to MaterialButton to match splash animation to child
   //   DonateButton((){}),

    ],
  );
}

Widget agentData() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      DonationService(
        image: "Images/cat.png",
        text: "Choose a charitable activity",
      ),
      DonationService(
        image: "Images/amount.png",
        text: "Amount",
      ),
      DonationService(
        image: "Images/address.png",
        text: "Choose your address",
      ),


//      DonateButton( (){
//        return modal1.mainBottomSheet(context);
//      }),
    ],
  );
}


class DonationService extends StatelessWidget {
  DonationService({this.text, this.image});

  final String text, image;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(7),
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
            borderRadius: new BorderRadius.all(Radius.circular(8)),
          ),
          width: 360,
          height: 35,
          child: Row(
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                child: Center(
                  child: Image.asset("$image"),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                '$text',
                style: TextStyle(fontSize: 18),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.chevron_right),
              )
            ],
          )),
    );
  }
}


