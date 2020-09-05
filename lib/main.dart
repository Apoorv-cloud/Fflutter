import 'package:flutter/material.dart';
import 'homepage.dart';
import 'splash_screen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomePage()
};

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Flip',
      theme: ThemeData(
        primaryColor: Color(0xffffffff),
      ),
      home: SplashScreen(),
    );
  }
}