import 'dart:ui';
import 'package:conference_app/createevent.dart';
import 'package:conference_app/speaker_joela.dart';
import 'package:conference_app/speaker_michael.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/marketing_conference_screen.dart';
import 'registration_screen.dart';
import '/homepage.dart';
void main() {
  runApp(MaterialApp(
    home: m_conf(),
    title: "meeting_conference screen",
    routes: {
      '/speaker_joela': (context) => speaker_joela(),
      '/speaker_michael': (context) => speaker_mich(),
       '/homepage': (context) => homepage(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class m_conf extends StatefulWidget {
  @override
  State<m_conf> createState() => _m_confState();
}

class _m_confState extends State<m_conf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text('Marketing Conference'),
        backgroundColor: Colors.black,
        leading: Container(
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /* Padding(
                padding: EdgeInsets.only(left: 187, right: 80, top: 20),
                child:
              ),*/
              Container(
                padding: EdgeInsets.only(left: 30, right: 90, top: 10),
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.calendar,
                        size: 40, color: Colors.white),
                    SizedBox(width: 30),
                    Column(
                      children: [
                        Text(
                          'Wednesday,Oct 9',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '10:00-11:00AM',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffF2F2F2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Speakers',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/speaker_joela');
                                        },
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage('asset/2.jfif'),
                                          backgroundColor: Colors.black,
                                          radius: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/speaker_michael');
                                        },
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage('asset/1.jfif'),
                                          backgroundColor: Color.fromARGB(
                                              255, 214, 155, 155),
                                          radius: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FloatingActionButton(
                                        backgroundColor: Color(0xffD9D9D9),
                                        mini: true,
                                        child: Icon(Icons.add),
                                        foregroundColor: Colors.black,
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text('Agenda'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text('Presentation by Minnael Joela'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text('Presentation by Michael Jack'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text('Kigali Convention Center'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text('22 Dec,2022 - 29 Dec,2022'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 80,
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        child: Text('REGISTER'),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/splash');
                                        },
                                        style: ElevatedButton.styleFrom(
                                            onPrimary: Colors.white,
                                            primary: Color.fromARGB(
                                                255, 31, 30, 30)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        width: 372,
                        height: 500.0,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
