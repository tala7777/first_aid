import 'package:flutter/material.dart';

class Four extends StatefulWidget {
  static String route = "6";

  const Four({Key? key}) : super(key: key);

  @override
  State<Four> createState() => _FourState();
}

class _FourState extends State<Four> {
  double devicewidth = 0;
  double deviceheight = 0;
  bool click = true;
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
        actions: <Widget>[
          OutlinedButton(
              onPressed: () {
                setState(() {
                  click = !click;
                });
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: BorderSide.none,
              ),
              child: Icon(
                  color: const Color(0xFFB83434),
                  (click == false)
                      ? Icons.bookmark
                      : Icons.bookmark_border_outlined))
        ],

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: SizedBox(
            width: devicewidth,
            child: Image.asset(
                'lib/assets/images/Screen6.4-stitches.png',
                fit: BoxFit.cover,
                width: devicewidth),
          ),
        ),
      ),
    );
  }
}
