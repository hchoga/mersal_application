import 'package:flutter/material.dart';
import 'package:mersal/models/nav_tab_data.dart';

import '../widgets/navigation_bar/bank_card.dart';
import '../widgets/navigation_bar/need_agent.dart';
import '../widgets/navigation_bar/navigation_widget.dart';
import '../widgets/navigation_bar/sms.dart';

double height = 0.55;

startDonate(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DonationSheet();
      });
}

class DonationSheet extends StatefulWidget {

  @override
  _DonationSheetState createState() => _DonationSheetState();
}

class _DonationSheetState extends State<DonationSheet> {
  @override
  void dispose() {
    height = 0.55;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    //TODO: add SingleChildScrollView
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      child: Padding(
        padding: EdgeInsets.only(left: 12, top: 12,right: 12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'Images/donatee.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(width: 15),
                Text(
                  "Donate",
                  style: const TextStyle(color: Colors.teal, fontSize: 35),
                ),
              ],
            ),
            SizedBox(
              width: 160,
              child: Divider(
                height: 5,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8),

            NavigationWidget(
              activeColor: Colors.teal,
              inactiveColor: Colors.grey,
              tabsData: [
                NavTabData('Images/sms.png', 'SMS'),
                NavTabData('Images/nav_icons/credit-card.png', 'Bank Card'),
                NavTabData('Images/nav_icons/mandob.png', 'Need an agent')
              ],
              body: [
                SmsBody(),
                BankCardBody(),
                NeedAgentBody([])
              ],
            ),
        //    Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}