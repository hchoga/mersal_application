import 'package:flutter/material.dart';
import 'package:mersal/Screens/donation_sheet.dart';
import 'package:mersal/models/project_model.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../widgets/donate_button.dart';

showItemDetails(BuildContext context, item) {
  return showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SizedBox(
            height: MediaQuery.of(context).size.height * 0.65,
            child: ItemDetails(item));
      });
}

class ItemDetails extends StatelessWidget {
  final item;

  const ItemDetails(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Image.asset(item.imageUrl, height: 140, fit: BoxFit.cover),
          color: Colors.lightBlueAccent,
          width: double.infinity,
        ),
        Divider(thickness: 1, height: 1),
        Padding(
          padding:
              const EdgeInsets.only(left: 14, right: 20, top: 10, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                   item is Project ? item.title : "Case #${item.id}" ,
                  style: TextStyle(color: Colors.teal, fontSize: 22),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                ((item.collected / item.amount) * 100).toStringAsFixed(0) + '%',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: StepProgressIndicator(
            totalSteps: item.amount,
            currentStep: item.collected,
            size: 6,
            padding: 0,
            selectedColor: Color(0xff039192),
            unselectedColor: Color(0xffECB720),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                text: TextSpan(
                    style: TextStyle(
                      //default textStyle
                      color: Colors.grey, fontSize: 20,
                    ),
                    children: [
                      TextSpan(text: 'Raised:'),
                      TextSpan(
                          text: item.collected.toStringAsFixed(0) + 'LE  ',
                          style: TextStyle(color: Colors.amber)),
                    ]),
              ),
              RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                    children: [
                      TextSpan(text: 'Goal: '),
                      TextSpan(
                          text: item.amount.toStringAsFixed(0) + 'L.E',
                          style: TextStyle(color: Colors.teal))
                    ]),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Text(
                item.description,
                style: TextStyle(color: Colors.grey.shade700, fontSize: 18),
                softWrap: true,
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        // Spacer(),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
              width: 120,
              child: FittedBox(child: DonateButton(() {
                Navigator.pop(context);
                startDonate(context);
              }, 'Donate'))),
        )
      ],
    );
  }
}
