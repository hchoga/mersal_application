import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  final _formKey = GlobalKey<FormState>();

  InputDecoration textFieldDecoration(String label){
    return InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black),
    border: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.teal)));
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: textFieldDecoration('City'),
                ),
                TextFormField(
                  decoration: textFieldDecoration('Area'),
                ),
                TextFormField(
                  decoration: textFieldDecoration('Street'),
                ),
                TextFormField(
                  decoration: textFieldDecoration('Building'),
                ),
                TextFormField(
                  decoration: textFieldDecoration('Floor'),
                ),
                TextFormField(
                  decoration: textFieldDecoration('Apartment no.'),
                ),
                TextFormField(
                  decoration: textFieldDecoration('Area'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
