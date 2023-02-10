import 'dart:ui';
import 'package:conference_app/login_screen.dart';
import 'package:conference_app/createevent.dart';
import 'package:flutter/material.dart';
import '/marketing_conference_screen.dart';
import '/login_screen.dart';
import 'createevent.dart';
void main() {
  runApp(MaterialApp(
    home: homepage(),
    title: "homepage screen",
    routes: {
      '/m_conf': (context) => m_conf(),
      '/login': (context) => login(),
        '/reg': (context) => reg(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Conferences'),
        backgroundColor: Colors.black,
        leading: Container(
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
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
              Padding(
                padding: EdgeInsets.only(left: 80, right: 80, top: 20),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xffE0A458),
                            image: DecorationImage(
                              image: AssetImage('asset/business.png'),
                            ),
                          ),
                          child: Text(
                            'Marketing Conference',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          width: 130,
                          height: 170.0,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/m_conf');
                        },
                      ),
                      SizedBox(
                        height: 20,
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xffD9D9D9),
                          image: DecorationImage(
                            image: AssetImage(
                              'asset/people.png',
                            ),
                          ),
                        ),
                        child: Text(
                          'Community Gathering',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        width: 130,
                        height: 170.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xffD9D9D9),
                          image: DecorationImage(
                            image: AssetImage(
                              'asset/conv.png',
                            ),
                          ),
                        ),
                        child: Text(
                          'Designers MeetUps',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        width: 130,
                        height: 170.0,
                      ),
                      SizedBox(
                        height: 20,
                        width: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xffD9D9D9)),
                          child: FloatingActionButton(
                            backgroundColor: Color(0xffD9D9D9),
                            mini: true,
                            child: Icon(Icons.add),
                            foregroundColor: Colors.black,
                            onPressed: () {
                              Navigator.pushNamed(context, '/reg');
                            },
                          ),
                          width: 130,
                          height: 170.0,
                        ),
                         onTap: () {
                          Navigator.pushNamed(context, '/reg');
                        },
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
