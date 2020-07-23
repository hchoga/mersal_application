import 'package:flutter/material.dart';


bool isEmail(String em) {
  String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = new RegExp(p);
  return regExp.hasMatch(em);
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

//  bool _isLoading = false ;
  Map<String, String> _registerData = {
    'name': '',
    'email': '',
    'password': '',
    'country': '',
    'city': ''
  };
  //chick for valid mails

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(right: width),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.amber,
        ),
      ),
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: height * 0.2,
              ),
              Text("Registraion",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              BuildTextField(
                hintText: ' name',
                validator: (value) {
                  if (value.length < 3) return 'Username short';
                  _registerData['name'] = value;
                  return null;
                },
              ),

              BuildTextField(
                hintText: ' e-mail',
                validator: (value) {
                  if (value.isEmpty) return "Please enter your E-mail";
                  else if (!isEmail(value))
                    return "Please enter a valid E-mail";
                  _registerData['email'] = value;
                  return null;
                },
              ),

              BuildTextField(
                hintText: ' password',
                obscureText: true,
                validator: (value) {
                  if (value.length < 8) return 'Password short';
                  _registerData['password'] = value;
                  return null;
                },
              ),

              BuildTextField(
                hintText: ' country',
                validator: (value) {
                  if (value.isEmpty) return "this field is required";
                  _registerData['country'] = value;
                  return null;
                },
              ),

              BuildTextField(
                hintText: ' city',
                validator: (value) {
                  if (value.isEmpty) return "this field is required";
                  _registerData['city'] = value;
                  return null;
                },
              ),

              SizedBox(
                width: width * 0.05,
                height: height * 0.08,
              ),
              //TODO: change button width , SizedBox not working
              //TODO: change button on tapped color
              OutlineButton(
                color: Colors.white,
                borderSide: BorderSide(color: Colors.white, width: 1.2),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.white)),
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  if(_formKey.currentState.validate()) {
                    Navigator.pushNamed(context, 'Mersal Home');
                    //   register(_registerData);
                    //print(_registerData);
                    //TODO: implement sign up and wrap the validation in if condition
                  }
                },
                child: const Text(
                  'Register',
                  style: const TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Images/sign_up_background.jpg

// ignore: must_be_immutable
class BuildTextField extends StatelessWidget {
  final String hintText;
  Function(String) validator = (value) {
    if (value.isEmpty) return "this field is requird";
    return null;
  };
  final bool obscureText;

  BuildTextField(
      {this.hintText, this.validator, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      obscureText: obscureText,
      decoration: InputDecoration(
        //TODO: change active color (blue)
          labelText: hintText,
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          hintStyle: TextStyle(fontSize: 18, color: Colors.white)),
      validator: validator ,
    );
  }
}
