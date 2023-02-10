import 'package:flutter/material.dart';
import 'package:conference_app/marketing_conference_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/marketing_conference_screen.dart';
void main() {
  runApp(MaterialApp(
    home: speaker_mich(),
    title: "Speaker Jack",
    routes: {
    '/m_conf': (context) => m_conf(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class speaker_mich extends StatefulWidget {
  const speaker_mich({Key? key}) : super(key: key);

  @override
  State<speaker_mich> createState() => _speaker_michState();
}

class _speaker_michState extends State<speaker_mich> {
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
                            image: AssetImage('asset/1.jfif'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Michael Jack",
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
                              "\"Sucess is not final;failure is not fatal: it is the courage to continue that counts.\"",
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
                                  'Michael_Jk1',
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
                                  'Jack_Mich20',
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
                                  'Jack_Mich20',
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
