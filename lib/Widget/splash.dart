import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


import 'intro.dart';
void main(){
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: new MySplashscreen(),
    )
  );
}

class MySplashscreen extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MySplashscreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new App(),
      title: new Text('Welcome',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26.0,
        color: Colors.purple,
       ),
      ),
      image: Image.asset("assets/splash.png"),
      backgroundColor: Colors.white,
      photoSize: 150.0,
    );
  }
}