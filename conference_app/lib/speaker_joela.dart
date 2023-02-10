import 'package:flutter/material.dart';
import 'package:conference_app/marketing_conference_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/marketing_conference_screen.dart';

void main() {
  runApp(MaterialApp(
    home: speaker_joela(),
    title: "Speaker Joela",
    routes: {
      '/m_conf': (context) => m_conf(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class speaker_joela extends StatefulWidget {
  const speaker_joela({Key? key}) : super(key: key);

  @override
  State<speaker_joela> createState() => _speaker_joelaState();
}

class _speaker_joelaState extends State<speaker_joela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Container(
              child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/m_conf');
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          )),
        ),
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Center(
                child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(children: [
                      Container(
                        height: 240.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage('asset/2.jfif'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Minael Joela",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              // textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            Text(
                              "\"Instead of interrupting; work on attracting.\"",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              // textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(FontAwesomeIcons.instagram,
                                    size: 20,
                                    color: Color.fromARGB(255, 10, 10, 10)),
                                Text(
                                  'Minjoela12',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(FontAwesomeIcons.twitter,
                                    size: 20,
                                    color: Color.fromARGB(255, 10, 10, 10)),
                                Text(
                                  'min_joela0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(FontAwesomeIcons.github,
                                    size: 20,
                                    color: Color.fromARGB(255, 10, 10, 10)),
                                Text(
                                  'min_joela0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        height: 240.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                      )
                    ])))
          ],
        ));
  }
}
