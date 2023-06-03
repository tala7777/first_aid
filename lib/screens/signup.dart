import 'package:flutter/material.dart';
import 'login.dart';
import 'package:first_aid/screens/home.dart';

class SignUp extends StatefulWidget {
  static String route = "14";
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  double devicewidth = 0;
  double deviceheight = 0;
  @override
  Widget build(BuildContext context) {
    devicewidth = (MediaQuery.of(context).size.width);
    deviceheight = (MediaQuery.of(context).size.height);
    return Scaffold(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 70, 0, 10),
            child: Text('Welcome !',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Italiana',
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                    color: Color(0xFFB83434))),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Text('Create an account to get started',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w100,
                    fontSize: 20,
                    color: Color(0xFFF5533D))),
          ),
          SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                style: const TextStyle(color: Color(0xFFF5533D), fontSize: 20),
                cursorColor: const Color(0xFFB83434),
                cursorWidth: 2,
                cursorOpacityAnimates: true,
                autofocus: true,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    hintText: 'Enter your full name',
                    hintStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Color(0xFFF5533D)),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(70),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                style: const TextStyle(color: Color(0xFFF5533D), fontSize: 20),
                cursorColor: const Color(0xFFB83434),
                cursorWidth: 2,
                cursorOpacityAnimates: true,
                autofocus: true,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    hintStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Color(0xFFF5533D)),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(70),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                style: const TextStyle(color: Color(0xFFF5533D), fontSize: 20),
                cursorColor: const Color(0xFFB83434),
                cursorWidth: 2,
                cursorOpacityAnimates: true,
                autofocus: true,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    hintText: 'Enter your country',
                    hintStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Color(0xFFF5533D)),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(70),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                enableSuggestions: false,
                autocorrect: false,
                obscureText: true,
                style: const TextStyle(color: Color(0xFFF5533D), fontSize: 20),
                cursorColor: const Color(0xFFB83434),
                cursorWidth: 2,
                cursorOpacityAnimates: true,
                autofocus: true,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    hintText: 'Enter password',
                    hintStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Color(0xFFF5533D)),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(70),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                enableSuggestions: false,
                autocorrect: false,
                obscureText: true,
                style: const TextStyle(color: Color(0xFFF5533D), fontSize: 20),
                cursorColor: const Color(0xFFB83434),
                cursorWidth: 2,
                cursorOpacityAnimates: true,
                autofocus: true,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    hintText: 'Confirm password',
                    hintStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Color(0xFFF5533D)),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(70),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 70,
            width: 350,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFF5533D),
                    side: BorderSide.none,
                    shape: const StadiumBorder()),
                child: const Text('Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                    )),
              ),
            ),
          ),
          Center(
            child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center //Center Row contents horizontally,
                , //Center Row contents vertically,
                children: [
                  const Text("Do you have an account ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Color(0xFFF5533D))),
                  TextButton(
                      child: const Text('Sign in',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Color(0xFFF5533D))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      })
                ]),
          )
        ],
      ),
    ));
  }
}
