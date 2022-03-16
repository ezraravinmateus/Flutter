import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/landing_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Two',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        cardColor: Colors.blueGrey[100],
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
        textTheme: GoogleFonts.ralewayTextTheme(),
        dividerColor: Color.fromRGBO(58, 66, 86, 1.0).withOpacity(.6),
        scaffoldBackgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),
      home: LandingPage(),
    );
  }
}
