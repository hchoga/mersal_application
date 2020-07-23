import 'package:flutter/material.dart';
import 'sign_up.dart' show isEmail;
import 'package:mersal/widgets/alert_dialog.dart';
showProfileSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ProfileSheet();
      });
}

class ProfileSheet extends StatelessWidget {
  final _formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Form(
        key: _formState,
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: 'Email'),
              validator: (value) {
                if (value.isEmpty)
                  return "Please enter your E-mail";
                else if (!isEmail(value)) return "Please enter a valid E-mail";
                return null;
              },
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: 'name',
                // hintText: ''
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                icon: Image.asset(
                  'Images/settings/edit.png',
                  width: 25,
                  height: 25,
                ),
                labelText: 'Address 1',
                hintText: 'hintText',

              ),

            ),
            SizedBox(height: 15),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                icon: Image.asset(
                  'Images/settings/edit.png',
                  width: 25,
                  height: 25,
                ),
                labelText: 'Address 2',
                hintText: 'hintText',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25, right: 7),
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.teal)),
                    child: FlatButton(
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.teal),
                      ),
                      onPressed: () {
                        _formState.currentState.validate();
                        addressDialog(context);
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
