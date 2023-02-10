import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
import '/homepage.dart';
void main() {
  runApp(MaterialApp(
    home: reg(),
    title: "event create screen",
    routes: {
        '/homepage': (context) => homepage(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class reg extends StatefulWidget {
  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
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
          Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(50, 40, 0, 5),
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
                        margin: EdgeInsets.only(top:2, right: 100),
                        child: Text(
                          'Create',
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
                          'The meeting',
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
                        height: 450.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Form(
                          key: _keyform,
                          child: Column(
                            children: [
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: "Meeting Title",
                                  hintStyle: TextStyle(color: Colors.white),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                                    return "Enter valid meeting title";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              Divider(
                                height: 8.0,
                                color: Colors.red,
                              ),
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: "location",
                                  hintStyle: TextStyle(color: Colors.white),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                                    return "field required!";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: "Speaker Names",
                                  hintStyle: TextStyle(color: Colors.white),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[a-z A-Z]').hasMatch(value)) {
                                    return "field required!";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              Divider(
                                height: 8.0,
                                color: Colors.red,
                              ),
                              SingleChildScrollView(
                                child: TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: "date",
                                    hintStyle: TextStyle(color: Colors.white),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty
                                       ) {
                                      return "field required!";
                                    } else {
                                      return null;
                                    }
                                  },
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
                                        child: Text('Create'),
                                        onPressed: () {
                                           if (_keyform.currentState!
                                              .validate()) {
                                            Navigator.pushNamed(
                                                context, '/homepage');
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
