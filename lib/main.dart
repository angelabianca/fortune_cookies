import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shake/shake.dart';
import 'package:share/share.dart';
import 'model/FortuneCookieViewModel.dart';
import 'pages/FortuneCookiePage.dart';



void main() {
  runApp(FortuneCookieApp());
}

class FortuneCookieApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FortuneCookieAppState();
}

class _FortuneCookieAppState extends State<FortuneCookieApp> {
  FortuneCookieViewModel model;

  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(
        onPhoneShake: () {
          HapticFeedback.vibrate();
          print('ich werde geshütelt');
          model.txt =model.getword();
          Text(model.txt);

        }
    );
    model = FortuneCookieViewModel();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Fortune Cookie',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: FortuneCookiePage(model)
    );

  }

}




