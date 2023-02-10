import 'dart:ui';

import 'package:flutter/material.dart';
import '/homepage.dart';
import '/login_screen.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MaterialApp(
    home: sign(),
    title: "signup screen",
    routes: {
      '/homepage': (context) => homepage(),
      '/login': (context) => login(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class sign extends StatefulWidget {
  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  final _keyform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(5.0, 50, 10, 5),
              width: 390,
              height: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10, left: 10, right: 50),
                      height: 100,
                      width: 400,
                      child: Image.asset(
                        'asset/hoho.png',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 10, 70, 0),
                    width: 80,
                    height: 27,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Text('Up',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.fromLTRB(5.0, 20, 10, 5),
                    height: 400.0,
                    width: 270.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Form(
                      key: _keyform,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: Validators.compose(
                                [Validators.required('full name is required')]),
                            style: TextStyle(color: Colors.white),
                            obscureText: false,
                            decoration: InputDecoration(
                                hintText: "Enter your full names",
                                hintStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(
                                  Icons.person,
                                  size: 20,
                                  color: Colors.white,
                                )),
                          ),
                          Divider(
                            height: 8.0,
                            color: Colors.red,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'email is required';
                              } else if (!value.contains('@') ||
                                  !value.contains('.')) {
                                return 'enter valid email';
                              }
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            obscureText: false,
                            decoration: InputDecoration(
                                hintText: "Enter your email",
                                hintStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Colors.white,
                                )),
                          ),
                          Divider(
                            height: 8.0,
                            color: Colors.red,
                          ),
                          SingleChildScrollView(
                            child: TextFormField(
                              validator: ((value) {
                                if (value == null || value.isEmpty) {
                                  return 'password is required';
                                } else if (value.length < 6) {
                                  return 'characters must be 6 or greater';
                                }
                                return null;
                              }),
                              style: TextStyle(color: Colors.white),
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter your password",
                                  hintStyle: TextStyle(color: Colors.white),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    size: 20,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          Divider(
                            height: 8.0,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5.0, 40, 0, 0),
                            child: Text(
                              'By Signing Up Agree To Terms&Conditions',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(padding: EdgeInsets.only(top: 60)),
                                SizedBox(
                                  width: 180.0,
                                  height: 40.0,
                                  child: ElevatedButton(
                                    child: Text('SIGNUP'),
                                    onPressed: () {
                                      if (_keyform.currentState!.validate()) {
                                        Navigator.pushNamed(
                                            context, '/homepage');
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        onPrimary: Colors.white,
                                        primary:
                                            Color.fromARGB(255, 247, 187, 25)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
