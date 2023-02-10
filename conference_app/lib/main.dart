import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/splashscreen.dart';
import '/login_screen.dart';
import '/signup.dart';
import '/homepage.dart';
import 'createevent.dart';
import '/marketing_conference_screen.dart';
import '/registration_screen.dart';
import '/speaker_joela.dart';
import '/speaker_michael.dart';
import 'registration_success.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/Home',
    routes: {
      '/Home': (context) => Home(),
        '/login': (context) => login(),
        '/sign': (context) => sign(),
         '/homepage': (context) => homepage(),
         '/reg': (context) => reg(),
          '/m_conf': (context) => m_conf(),
          '/splash': (context) => splash(),
            '/reg_sucess': (context) => reg_sucess(),
      '/speaker_joela': (context) => speaker_joela(),
      '/speaker_michael': (context) => speaker_mich(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
