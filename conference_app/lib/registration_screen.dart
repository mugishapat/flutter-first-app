import 'dart:ui';

import 'package:flutter/material.dart';
import '/registration_success.dart';
import '/marketing_conference_screen.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

void main() {
  runApp(MaterialApp(
    home: splash(),
    title: "registration screen",
    routes: {
      '/reg_sucess': (context) => reg_sucess(),
      '/m_conf': (context) => m_conf(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class splash extends StatefulWidget {
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  final _keyform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          //margin: EdgeInsets.only(top: 50,left:40),

          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/m_conf');
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
          Center(
            child: Column(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 300, 0),
                        width: 150,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        margin: EdgeInsets.only(top: 2, right: 100),
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        margin: EdgeInsets.only(
                          top: 10,
                          right: 50,
                        ),
                        child: Text(
                          'To attend the meeting',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 20, 10, 5),
                        height: 350.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Form(
                          key: _keyform,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: Validators.compose([
                                  Validators.required('full name is required')
                                ]),
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
                                      return 'phoneNumber is required';
                                    }
                                  }),
                                  style: TextStyle(color: Colors.white),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                      hintText: "Enter your phone number",
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
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 50, top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 100.0,
                                      height: 30.0,
                                      child: ElevatedButton(
                                        child: Text('REGISTER'),
                                        onPressed: () {
                                          if (_keyform.currentState!
                                              .validate()) {
                                            Navigator.pushNamed(
                                                context, '/reg_sucess');
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            onPrimary: Colors.white,
                                            primary: Color.fromARGB(
                                                255, 247, 187, 25)),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
