import 'package:first_aid/screens/home.dart';
import 'package:first_aid/screens/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String route = "2";
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            padding: EdgeInsets.fromLTRB(0, 50, 0, 10),
            child: Text('Your First Aid Helper!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Italiana',
                    fontSize: 50,
                    color: Color(0xFFB83434))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Image.asset(
              'lib/assets/images/undraw_doctor_kw-5-l (1).svg',
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 5, 10),
            child: Row(children: [
              Text('Log in',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 40,
                      color: Color(0xFFB83434))),
            ]),
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
                    hintText: 'Username',
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
                    hintText: 'Password',
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
                child: const Text('Log in',
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
                  const Text("Don't have an account ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Color(0xFFF5533D))),
                  TextButton(
                      child: const Text('Register',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Color(0xFFF5533D))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      })
                ]),
          )
        ],
      ),
    ));
  }
}
