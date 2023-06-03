import 'package:first_aid/screens/contacts/profile2.dart';
import 'package:first_aid/screens/contacts/profile3.dart';
import 'package:first_aid/screens/emergencies/emergencycase1.dart';
import 'package:first_aid/screens/emergencies/emergencycase2.dart';
import 'package:first_aid/screens/emergencies/emergencycase3.dart';
import 'package:first_aid/screens/emergencies/emergencycase4.dart';
import 'package:first_aid/screens/emergencies/emergencycase5.dart';
import 'package:first_aid/screens/emergencies/emergencycase6.dart';
import 'package:first_aid/screens/login.dart';
import 'package:first_aid/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:first_aid/screens/home.dart';
import 'package:first_aid/screens/contacts/profile.dart';
import 'package:first_aid/screens/savedcase.dart';
import 'package:first_aid/screens/emergencycases.dart';
import 'screens/Allcontacts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      routes: {
        Login.route: (context) => const Login(),
        SignUp.route: (context) => const SignUp(),
        One.route: (context) => const One(),
        Two.route: (context) => const Two(),
        Three.route: (context) => const Three(),
        Four.route: (context) => const Four(),
        Five.route: (context) => const Five(),
        Six.route: (context) => const Six(),
        Cases.route: (context) => const Cases(),
        Saved.route: (context) => const Saved(),
        Profile.route: (context) => const Profile(),
        All.route: (context) => const All(),
        Profile2.route: (context) => const Profile2(),
        Profile3.route: (context) => const Profile3(),


      },
      title: 'First Aid',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            toolbarTextStyle:
                TextStyle(color: Colors.white, fontFamily: 'Italiana')),
        canvasColor: const Color(0xFFF0E4E4),

      ),
    );
  }
}
