import 'package:flutter/material.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../models/activity_model.dart';
import '../models/user_donation_model.dart';

/*
* we should get list of user donation purchase,
* then we should find these donated projects from total mersal projects,
* to display current status for each case,
*
*           ***ADVANCED***
* if the case isn't completed yet, the use should be able to donate again for this case
* */

/*
*
* */


class DonationCard extends StatelessWidget {
  final Activity _case; //this should be mersal project case instead of patients only
  final UserDonation userDonation;
  const DonationCard(this._case, this.userDonation);
  final double height = 160; //widget height

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias, // instead of ClipRRect
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 4,
              child: Image.asset(
                _case.imageUrl,
                fit: BoxFit.fitHeight,
                height: height,
              ),
            ),
            Flexible(
              flex: 6,
              child: SizedBox(
                height: height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "Case #${_case.id}",
                        style: TextStyle(color: Colors.teal, fontSize: 18),
                        textAlign: TextAlign.left,
                      ),

                      Spacer(flex: 3),

                      Text(((_case.collected / _case.amount)*100).toStringAsFixed(0) + '%'),

                      StepProgressIndicator(
                        totalSteps: _case.amount,
                        currentStep: _case.collected,
                        size: 6,
                        padding: 0,
                        selectedColor: Color(0xff039192),
                        unselectedColor: Color(0xffECB720),
                      ),

                      Spacer(flex: 3),

                      FittedBox(
                        ///** MUST have fixed size parent **
                        fit: BoxFit.fitWidth,
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                //default textStyle
                                color: Colors.grey, //    fontSize: 20
                              ),
                              children: [
                                TextSpan(text: 'Raised:'),
                                TextSpan(
                                    text: _case.collected.toStringAsFixed(0) +
                                        'LE  ',
                                    style: TextStyle(color: Colors.amber)),
                                TextSpan(text: 'Goal: '),
                                TextSpan(
                                    text: _case.amount.toStringAsFixed(0) + 'L.E',
                                    style: TextStyle(color: Colors.teal))
                              ]),
                        ),
                      ),

                      Spacer(flex: 3),

                      //TODO: u may add DateTime package to select display format
                      Text('you have donated for this case with amount: ${userDonation.amount}LE, on ${userDonation.date.day}/${userDonation.date.month}/${userDonation.date.year}',
                          style: TextStyle(fontSize: 15)),

                      Spacer(flex: 1)
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
