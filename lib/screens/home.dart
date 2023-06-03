import 'package:first_aid/screens/login.dart';
import 'package:flutter/material.dart';
import 'emergencycases.dart';
import 'package:first_aid/screens/savedcase.dart';
import 'Allcontacts.dart';
import 'emergencies/emergencycase1.dart';
import 'emergencies/emergencycase2.dart';
import 'emergencies/emergencycase3.dart';
import 'emergencies/emergencycase4.dart';
import 'emergencies/emergencycase5.dart';
import 'emergencies/emergencycase6.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  double devicewidth = 0;
  double deviceheight = 0;
  @override
  Widget build(BuildContext context) {
    devicewidth = (MediaQuery.of(context).size.width);
    deviceheight = (MediaQuery.of(context).size.height);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFF5533D),
          shadowColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            TextButton(
                child: const Text('Sign out',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: Colors.white)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                })
          ]
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          ),
      body: SizedBox(
        width: devicewidth,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: deviceheight / 3,
                width: devicewidth,
                color: const Color(0xFFF5533D),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: CircleAvatar(
                      backgroundImage: const AssetImage(
                          'lib/assets/images/download (2).png'),
                      radius: devicewidth / 7,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Text('Welcome Olivia Johns',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w200,
                            fontSize: 20,
                            color: Colors.white)),
                  ),
                ]),
              ),
              Row(

                  //Center Row contents horizontal//Center Row contents vertically,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.fromLTRB(20, 0, 3, 0),
                      child: const ImageIcon(
                        AssetImage(
                            "lib/assets/images/270-2708321_doctor-symbol-3d-png.png"),
                        color: Color(0xFFB83434),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 150, 0),
                      child: const Text("Emergency cases",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Color(0xFFB83434))),
                    ),
                    TextButton(
                        child: const Text('more >',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Color(0xFFB83434))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  //
                                  builder: (context) => const Cases()));
                        })
                  ]),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Center(
                      child: SizedBox(
                        width: devicewidth / 2,
                        height: deviceheight / 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const One()));
                            },
                            style: OutlinedButton.styleFrom(
                                backgroundColor: const Color(0xFFF5533D),
                                side: BorderSide.none,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text('Burns',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Poppins',
                                )),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Center(
                      child: SizedBox(
                        width: devicewidth / 2,
                        height: deviceheight / 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Two()));
                            },
                            style: OutlinedButton.styleFrom(
                                backgroundColor: const Color(0xFFF5533D),
                                side: BorderSide.none,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text('Drowning',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Poppins',
                                )),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Center(
                      child: SizedBox(
                        width: devicewidth / 2,
                        height: deviceheight / 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Three()));
                            },
                            style: OutlinedButton.styleFrom(
                                backgroundColor: const Color(0xFFF5533D),
                                side: BorderSide.none,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text('Head Injuries',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Poppins',
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(

                  //Center Row contents horizontal//Center Row contents vertically,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.fromLTRB(20, 0, 3, 0),
                      child: const Icon(
                        Icons.bookmark,
                        color: Color(0xFFB83434),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 190, 0),
                      child: const Text("Saved cases",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Color(0xFFB83434))),
                    ),
                    TextButton(
                        child: const Text('more >',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Color(0xFFB83434))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Saved()));
                        })
                  ]),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Center(
                      child: SizedBox(
                        width: devicewidth / 2,
                        height: deviceheight / 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Four()));
                            },
                            style: OutlinedButton.styleFrom(
                                backgroundColor: const Color(0xFFF5533D),
                                side: BorderSide.none,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text('Stitches (Sutures)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Poppins',
                                )),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Center(
                      child: SizedBox(
                        width: devicewidth / 2,
                        height: deviceheight / 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Five()));
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
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Center(
                      child: SizedBox(
                        width: devicewidth / 2,
                        height: deviceheight / 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Six()));
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
                    ),
                  ],
                ),
              ),
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
                      padding: const EdgeInsets.fromLTRB(0, 0, 160, 0),
                      child: const Text("Quick dial ",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Color(0xFFB83434))),
                    ),
                    TextButton(
                        child: const Text('All contacts >',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Color(0xFFB83434))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const All()));
                        })
                  ]),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: devicewidth / 2,
                      height: deviceheight / 5,
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide.none,
                                shape: const CircleBorder()),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: devicewidth / 8,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset(
                                    'lib/assets/images/img_2.png',
                                    width: devicewidth / 2,
                                    height: deviceheight / 5),
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: devicewidth / 2,
                      height: deviceheight / 5,
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide.none,
                                shape: const CircleBorder()),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: devicewidth / 8,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset(
                                  'lib/assets/images/img_1.png',
                                ),
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: devicewidth / 2,
                      height: deviceheight / 5,
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide.none,
                                shape: const CircleBorder()),
                            child: CircleAvatar(
                              radius: devicewidth / 8,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset('lib/assets/images/img.png',
                                    width: devicewidth / 2,
                                    height: deviceheight / 5),
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
