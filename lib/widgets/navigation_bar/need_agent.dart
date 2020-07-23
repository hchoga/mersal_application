import 'package:flutter/material.dart';
import '../../widgets/donate_button.dart';
import 'amount_field.dart';

//TODO: if now address disable donate button
//TODO: implement add address dialogue according to demoData.dart-> userData[of single address ]

class NeedAgentBody extends StatefulWidget {
  final List<Map<String, String>> address;

  NeedAgentBody(this.address);

  @override
  _NeedAgentBodyState createState() => _NeedAgentBodyState();
}

class _NeedAgentBodyState extends State<NeedAgentBody> {
  final _formKey = GlobalKey<FormState>();
  double amount;

  _saveForm() {
    if (!_formKey.currentState.validate()) return;
    _formKey.currentState.save();
    print(amount);
  }

  @override
  Widget build(BuildContext context) {
    int selectedAddress = 0;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Form(key: _formKey, child: AmountField(amount)),

            SizedBox(height: 8),
            FlatButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                if (widget.address.length == 0)
                  // add address ...
                  return;
                else
                  // switch address
                  return;
              },
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(
                        width: 70,
                        height: 50,
                        child: Center(
                          child: Image.asset('Images/nav_icons/address.png',
                              width: 35, height: 35),
                        ),
                      ),

                      Text('Address:',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal)),
                      Expanded(
                        child: Center(
                          child: Text(
                            widget.address.length == 0
                                ? 'add address !'
                                : widget.address[selectedAddress]
                                        ['city_${selectedAddress + 1}, '] +
                                    widget.address[selectedAddress]
                                        ['area_${selectedAddress + 1}, '] +
                                    widget.address[selectedAddress]
                                        ['street_${selectedAddress + 1}'],
                            style: widget.address.length == 0
                                ? TextStyle(color: Colors.red)
                                : TextStyle(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            //  Spacer(flex: 3),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                    height: 50,
                    child: FittedBox(
                        child: DonateButton(_saveForm, 'Donate NOW'))),
              ),
            ),
            // Spacer(),
          ],
        ),
      ),
    );
  }
}
