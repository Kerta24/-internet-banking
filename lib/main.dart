import 'package:my_koprasi/page/dashboard.dart';
import 'package:my_koprasi/page/loginregister/login.dart';
import 'package:flutter/material.dart';
import 'package:my_koprasi/page/qrcode/qrcode.dart';
import 'package:my_koprasi/page/Grid/mygrid2.dart';
import 'package:my_koprasi/services/list_users_service.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MaterialApp(
    // builder: (context, child) => ResponsiveWrapper.builder(
    //   child,
    //   maxWidth: 1200,
    //   minWidth: 480,
    //   defaultScale: true,
    //   breakpoints: [
    //     ResponsiveBreakpoint.resize(480, name: MOBILE),
    //     ResponsiveBreakpoint.autoScale(800, name: TABLET),
    //     ResponsiveBreakpoint.resize(1000, name: DESKTOP),
    //   ],
    // ),
    home: LoginScreen(),
  ));
}
