import 'package:flutter/material.dart';
import 'package:mersal/Screens/item_details_sheet.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../donate_button.dart';
import '../../screens/donation_sheet.dart';
import '../../models/project_model.dart';

///used to present mersal projects in home screen
//TODO: make data model for this widget (need id - make progress indicator works )

class ProjectCard extends StatelessWidget {
  final Project item;
  const ProjectCard(this.item);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.76,    // value -> 1+ = wider , value -> 0 = taller
      child: FlatButton(
        onPressed: ()=> showItemDetails(context, item),
        padding: const EdgeInsets.all(0),
        child: Card(
          elevation: 0,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side:
                  BorderSide(color: Color.fromRGBO(200, 200, 200, 1), width: 1)),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //TODO:make image fill the entire space
              Image.asset(
                item.imageUrl,
                fit: BoxFit.fitHeight,
                height: 150,
              ),
              Divider(
                  thickness: 1,
                  color: Color.fromRGBO(200, 200, 200, 1),
                  height: 0),
              Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    item.title,
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Spacer(flex: 2),

              Padding(
                padding: EdgeInsets.only(left: 8, right: 8, top: 7),
                child: Row(
                  children: <Widget>[
                    Text(
                      '£${item.collected}/£${item.amount}',
                      style: TextStyle(
                          color: Color(0xff039192),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Spacer(flex: 2),
                    Text(
                      ((item.collected / item.amount)*100).toStringAsFixed(0) + '%',
                      style: TextStyle(
                          color: Color(0xff039192),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    )
                  ],
                ),
              ),

              // Progress Indicator
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8, bottom: 2),
                child: StepProgressIndicator(
                  totalSteps: item.amount.toInt(),
                  currentStep: item.collected.toInt(),
                  size: 6,
                  padding: 0,
                  selectedColor: Color(0xff039192),
                  unselectedColor: Color(0xffECB720),
                ),
              ),

              Spacer(flex: 1),

              DonateButton(() => startDonate(context), 'Donate'),

              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
