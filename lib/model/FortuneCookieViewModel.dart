import 'dart:math';
import 'package:scoped_model/scoped_model.dart';
import 'package:shake/shake.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/services.dart';


class FortuneCookieViewModel extends Model {

  String txt = "Schüttel dein Telefon, um deinen Glückskeks zu öffnen.";


  var arr = ["Heute wird ein guter Tag!","Heute wirst du deine Ziele erreichen.","Bleibe heute besser zuhause.","Was du heute kannst besorgen, das verschiebe nicht auf Morgen.","Es ist an der Zeit zu vergeben."];
  get getword{
    var rng = new Random();
    return arr[rng.nextInt(6)];
  }

  FortuneCookieViewModel(){
    ShakeDetector detector = ShakeDetector.autoStart(
        onPhoneShake: () {
          HapticFeedback.vibrate();
          print('ich werde geshütelt');
          txt = getword();
          notifyListeners();
        }
        );
  }

}