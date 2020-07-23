import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sign_up.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    bool isEmail(String em) {
      String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regExp = new RegExp(p);
      return regExp.hasMatch(em);
    }
//,floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //EdgeInsets.only(right: width * 0.12, bottom: height * 0.130),
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(right: width * 0.12, bottom: height * 0.130),
        child: FloatingActionButton(
          autofocus: false,
          onPressed: () {
            Navigator.pushNamed(context, 'Sign Up');
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.amber,
        ),
      ),

      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Container(
          height: height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Images/Mersalh.png'), fit: BoxFit.fill)),
          child: Padding(
            padding: EdgeInsets.all(23),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.45, bottom: 20),
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  BuildTextField(
                    hintText: ' Email',
                    validator: (value) {
                      if (value.isEmpty) return "Please enter your E-mail";
                      else if (!isEmail(value))
                        return "Please enter a valid E-mail";
                      //_registerData['email'] = value;
                      return null;
                    },
                  ),


                  SizedBox(
                    height: 45,
                  ),


                  BuildTextField(
                    hintText: ' password',
                    obscureText: true,
                    validator: (value) {
                      if (value.length < 8 ) return 'Password short';
                      //    _registerData['password'] = value;
                      return null;
                    },
                  ),

                  SizedBox(
                    width: width * 0.05,
                    height: height * 0.08,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.15),
                    child: FlatButton(
                      onPressed: () {
                        if(_formKey.currentState.validate()) {
                          //   register(_registerData);
                          // print(_registerData);
                          //TODO: implement sign up and wrap the validation in if condition
                        }
                      },
                      child: Container(
                        width: 190,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: FlatButton(
                          onPressed: (){
                            Navigator.pushNamed(context, 'Mersal Home');
                          },
                          child: Center(
                            child: Text(
                              'login',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 1)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
