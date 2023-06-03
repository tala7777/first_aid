import 'package:flutter/material.dart';
import 'contacts/profile.dart';
import 'contacts/profile2.dart';
import 'contacts/profile3.dart';

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);
  static String route = "14467";
  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
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
                  padding: const EdgeInsets.fromLTRB(20, 0, 3, 0),
                  child: const Icon(
                    Icons.phone,
                    color: Color(0xFFB83434),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 140, 0),
                  child: const Text("Emergency contacts",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          color: Color(0xFFB83434))),
                ),
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
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFF5533D),
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text('911',
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Profile2()));
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFF5533D),
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text('The speciality hospital',
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile3()));
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFFF5533D),
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Hayat hospital',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                      )),
                )),
          ),
        ]),
      ),
    );
  }
}
