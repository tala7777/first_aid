import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static String route = "9";

  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                onPressed: () => Navigator.of(context).pop(),
            ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body:  Column(children: [
        Container(
        height: deviceheight / 2.2,
        width: devicewidth,
        color: const Color(0xFFF5533D),

        child: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CircleAvatar(
              backgroundImage: const AssetImage(
                  'lib/assets/images/img_2.png'),
              radius: devicewidth / 7,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Text('911',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white)),

          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Text('Number 911',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w100,
                    fontSize: 15,
                    color: Colors.white)),

          ),
          Container(
              padding: const EdgeInsets.all(8.0),
              child:  IconButton(color: Colors.white, onPressed: () {  }, icon: const Icon(Icons.phone,size: 40,),
              ),
            ),

        ]),
      ),
         Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            alignment: Alignment.bottomLeft,
          child: const Text('Address: None ',
              textAlign: TextAlign.left,

              style: TextStyle(
          fontFamily: 'Italiana',
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color(0xFFB83434))),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          alignment: Alignment.bottomLeft,
          child: const Text('Availability: 24/7 ',
              textAlign: TextAlign.left,

              style: TextStyle(
                  fontFamily: 'Italiana',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFB83434))),
        ),

      ]),
    );
  }
}
