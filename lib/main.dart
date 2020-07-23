import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/projects.dart' as prov;
import 'screens/mersal_home_screen.dart';
import 'screens/sign_up.dart';
import 'screens/login.dart';
import 'screens/charitable_activity_screen.dart';
import 'screens/sponsors_screen.dart';
import 'screens/about_mersal.dart';
import 'screens/charitable_activities.dart';
import 'screens/settings_screen.dart';
import 'screens/treat_patient_screen.dart';
import 'screens/my_donation_screen.dart';
import 'screens/rate_app.dart';
import 'screens/projects_screen.dart';
import 'dart:io' show Platform;

///this file is up to date 3/5/2020 at 2:27PM
void main() => runApp(Platform.isIOS
    ? CupertinoApp
    : MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: prov.Projects())
      ],
      child: MaterialApp(
          theme: ThemeData(
            //primaryColor: Colors.white,
            appBarTheme: AppBarTheme(
                color: Colors.white,
                iconTheme: const IconThemeData(color: Colors.teal),
                textTheme: TextTheme(
                    title: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                        fontWeight: FontWeight.w400))),
            //TODO: implement TextTheme
            //textTheme: TextTheme()
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: 'Sign In',
          routes: {
            'Mersal Projects': (context) => ProjectsScreen(),
            'Rate App': (context) => Rating(),
            'My Donation': (context) => MyDonation(),
            TreatPatient.route: (context) => TreatPatient(),
            '/treat_patient/urgent': (context) => TreatPatient(isUrgent: true), //switch for urgent cases
            'Settings': (context) => Settings(),
            'About Mersal': (context) => AboutMersal(),
            'Charitable': (context) => CharitableActivities(),
            'Sponsors': (context) => Sponsors(),
            //  'Donation': (context) => DonationSheet(),
            'Mersal Home': (context) => MersalHome(),
            'Sign Up': (context) => SignUp(),
            'Sign In': (context) => SignIn(),
            ActivityScreen.route: (context) => ActivityScreen()
          },
        ),
    ));
