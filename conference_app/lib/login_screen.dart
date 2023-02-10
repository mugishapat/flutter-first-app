import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/login_screen.dart';
import '/homepage.dart';
import '/splashscreen.dart';
import '/signup.dart';

void main() {
  runApp(MaterialApp(
    home: login(),
    title: "LogIn Screen",
    routes: {
      '/homepage': (context) => homepage(),
      '/Home': (context) => Home(),
      '/sign': (context) => sign(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _keyform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Container(
              child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Home');
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
            Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'asset/undraw_male_avatar_re_y880.svg',
                              width: 100,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ]),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Color.fromARGB(255, 194, 193, 193)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'In',
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 231, 185, 99)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Please Log In into your Account',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 194, 193, 193)),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Form(
                        key: _keyform,
                        child: Column(children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 20, left: 75, right: 50),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 250,
                            height: 50.0,
                            child: Container(
                              color: Color.fromARGB(255, 148, 155, 161),
                              child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'email is required';
                                  } else if (!value.contains('@') ||
                                      !value.contains('.')) {
                                    return 'enter valid email';
                                  }
                                  return null;
                                },
                                obscureText: false,
                                decoration: InputDecoration(
                                    hintText: "Enter Your Email",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      size: 20,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          SizedBox(
                            width: 250,
                            height: 50.0,
                            child: Container(
                              color: Color.fromARGB(255, 148, 155, 161),
                              child: TextFormField(
                                validator: ((value) {
                                  if (value == null || value.isEmpty) {
                                    return 'password is required';
                                  } else if (value.length < 6) {
                                    return 'characters must be 6 or greater';
                                  }
                                  return null;
                                }),
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Enter Your Password",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      size: 20,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            height: 40.0,
                            width: 120.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFF0EEEE)),

                              //color: Colors.black,
                              child: Text('Log In',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  )),

                              onPressed: () {
                                if (_keyform.currentState!.validate()) {
                                  Navigator.pushNamed(context, '/homepage');
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'not yet a member?',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.white),
                                ),
                                TextButton(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color:
                                            Color.fromARGB(255, 241, 206, 107)),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/sign');
                                  },
                                )
                              ],
                            ),
                          )
                        ]),
                      ))
                ]))
          ],
        ));
  }
}
