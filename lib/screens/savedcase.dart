import 'package:flutter/material.dart';
import 'package:first_aid/screens/home.dart';
import 'emergencies/emergencycase4.dart';
import 'emergencies/emergencycase5.dart';
import 'emergencies/emergencycase6.dart';

class Saved extends StatefulWidget {
  static String route = "340";
  const Saved({Key? key}) : super(key: key);

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  double devicewidth = 0;
  double deviceheight = 0;
  @override
  Widget build(BuildContext context) {
    devicewidth = (MediaQuery.of(context).size.width);
    deviceheight = (MediaQuery.of(context).size.height);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: TextButton(
              child: const Text('<back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: Color(0xFFB83434),
                  )),
            onPressed: () => Navigator.of(context).pop(),),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(

              //Center Row contents horizontal//Center Row contents vertically,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.fromLTRB(20, 0, 3, 0),
                  child: const Icon(
                    Icons.bookmark,
                    color: Color(0xFFB83434),
                  ),
                ),
                const Text("Saved cases",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Color(0xFFB83434))),
              ]),
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
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFFF5533D),
                    ),
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
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
            width: devicewidth,
            height: deviceheight / 7,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Four()));
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFF5533D),
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text('Stitches (Sutures)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                    )),
              ),
            ),
          ),
          SizedBox(
            width: devicewidth,
            height: deviceheight / 7,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Five()));
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFF5533D),
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text('Epilepsy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                    )),
              ),
            ),
          ),
          SizedBox(
            width: devicewidth,
            height: deviceheight / 7,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Six()));
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFF5533D),
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text('Choking',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                    )),
              ),
            ),
          ),
        ])));
  }
}
