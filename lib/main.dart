import 'package:video_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_app/pages/home.dart';
//import 'package:video_app/pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
          primarySwatch: Colors.green,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      themeMode: ThemeMode.light,
      routes: {
        "/": (context) => Login(),
        "/home": (context) => Home(),
        "/login": (context) => Login(),
      },
    );
  }
}
