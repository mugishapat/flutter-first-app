import 'package:conference_app/login_screen.dart';
import 'package:conference_app/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    title: "splash screen",
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
     // '/splashscreen': (context) => Home(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/login_screen': (context) => login(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        backgroundColor: Color(0xFF111010),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
              child: Column(children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SvgPicture.asset(
                    'asset/undraw_schedule_meeting_52nu.svg',
                    width: 100,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ]),
                SizedBox(height: 50.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Tech',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2.0,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('Me',
                          style: TextStyle(
                            color: Color.fromARGB(255, 233, 185, 112),
                            letterSpacing: 2.0,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ]),
                SizedBox(height: 30.0),
                Text('Schedule Your Meetings',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    )),
                SizedBox(height: 10.0),
                Text('Punctuality is a virtue',
                    style: TextStyle(
                      color: Color(0xFF8E8E8E),
                      letterSpacing: 2.0,
                    )),
                SizedBox(height: 10.0),
                Text('We Love Being Punctual',
                    style: TextStyle(
                      color: Color(0xFF8E8E8E),
                      letterSpacing: 2.0,
                    )),
                SizedBox(height: 100.0),
                Container(
                  height: 40.0,
                  width: 120.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF0EEEE)),

                    //color: Colors.black,
                    child: Text('Start',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),

                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                ),
              ]),
            )
          ],
        ));
  }
}
