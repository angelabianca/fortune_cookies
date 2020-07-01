import 'package:flutter/material.dart';
import 'package:shake/shake.dart';
import 'package:share/share.dart';
import 'pages/FortuneCookiePage.dart';



void main() {
  runApp(FortuneCookieApp());
}

class FortuneCookieApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FortuneCookieAppState();
}

class _FortuneCookieAppState extends State<FortuneCookieApp> {



  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(
        onPhoneShake: () {
          Text('Hello World');
        });
    detector.stopListening();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Fortune Cookie',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: FortuneCookiePage()
    );

  }
}




