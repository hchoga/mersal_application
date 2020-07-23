import 'package:flutter/material.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../screens/donation_sheet.dart';
import '../models/project_model.dart';
import '../screens/item_details_sheet.dart';

//card contains image and info about mersal project --16/6
//TODO: Implement image.network
//TODO: check for dynamic variable => checks for [item] type

class ItemCard extends StatelessWidget {
   final item;
   const ItemCard(this.item);

  final double height = 140; //widget height

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,  // instead of ClipRRect
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 4,
              child: Image.asset(item.imageUrl,
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
                        item is Project ? item.title : "Case #${item.id}",
                        style: TextStyle(color: Colors.teal, fontSize: 18),
                        textAlign: TextAlign.left,
                      ),

                      Spacer(flex: 3),

                      Text(((item.collected / item.amount)*100).toStringAsFixed(0) + '%'),

                      StepProgressIndicator(
                        totalSteps: item.amount,
                        currentStep: item.collected,
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
                              style: TextStyle(  //default textStyle
                                  color: Colors.grey, //    fontSize: 20
                              ),
                              children: [
                                TextSpan(text: 'Raised:'),
                                TextSpan(
                                    text: item.collected.toString() +'LE  ',
                                    style: TextStyle(color: Colors.amber)),
                                TextSpan(text: 'Goal: '),
                                TextSpan(
                                    text: item.amount.toString() +'L.E',
                                    style: TextStyle(color: Colors.teal))
                              ]),
                        ),
                      ),

                      Spacer(flex: 3),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: ()=> startDonate(context) ,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Text( 'Donate',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            elevation: 5,
                            color: Colors.red,
                            height: 25,
                            minWidth: 80,
                            splashColor: Colors.grey.withOpacity(0.8),
                            highlightColor: Colors.red.shade700,
                          ),
                          MaterialButton(
                            onPressed: ()=> showItemDetails(context, item),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Text( 'read more',
                              style: TextStyle(color: Colors.white, fontSize: 13.5),
                            ),
                            elevation: 5,padding: const EdgeInsets.all(0),
                            color: Colors.black,
                            height: 25,
                            minWidth: 80,
                            splashColor: Colors.grey.withOpacity(0.2),
                            highlightColor: Colors.white10.withOpacity(0.1),
                          ),
                        ],
                      ),
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
