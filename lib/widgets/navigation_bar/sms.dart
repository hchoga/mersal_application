import 'package:flutter/material.dart';
import '../../widgets/donate_button.dart';
import 'package:mersal/widgets/alert_dialog.dart';

class SmsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(0),
              elevation: 1.5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Row(children: <Widget>[
                SizedBox(
                    width: 70,
                    height: 53,
                    child: Center(
                        child: Image.asset(
                      'Images/nav_icons/sms2.png',
                      width: 35,
                      height: 35,
                    ))),
                Text(
                  ' 1 SMS costs 5LE',
                  style: TextStyle(fontSize: 17),
                ),
              ]),
            ),
            Spacer(flex: 3),
            SizedBox(
                height: 50,
                child: FittedBox(child: DonateButton(() {
          confirmDialog(context);
                }, 'Donate NOW'))),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
