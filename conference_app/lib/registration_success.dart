import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    home: reg_sucess(),
    title: "Registration_sucess",
    routes: {
      '/Home': (context) => Home(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class reg_sucess extends StatefulWidget {
  const reg_sucess({Key? key}) : super(key: key);

  @override
  State<reg_sucess> createState() => _reg_sucessState();
}

class _reg_sucessState extends State<reg_sucess> {
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
                child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tech',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Color.fromARGB(255, 193, 194, 194)),
                    ),
                    Text(
                      'Me',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Color.fromARGB(255, 231, 185, 99)),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'You Have Been Successfully',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'Registered!',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'To Attend The Meeting',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SvgPicture.asset(
                    'asset/undraw_financial_data_re_p0fl.svg',
                    width: 100,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ]),
                SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100.0,
                        height: 30.0,
                        child: ElevatedButton(
                          child: Text('Logout'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Home');
                          },
                          style: ElevatedButton.styleFrom(
                              onPrimary: Colors.black, primary: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ))
          ],
        ));
  }
}
