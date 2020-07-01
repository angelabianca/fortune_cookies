import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:wasserwaage/model/FortuneCookieViewModel.dart';
import 'package:share/share.dart';


class FortuneCookiePage extends StatelessWidget {

  FortuneCookieViewModel model;

  FortuneCookiePage(this.model);

  String text = 'Schau dir meinen heutigen Glückskeks an: \n';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fortune Cookie'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(model.txt),
              Image(image: AssetImage('images/transparentCookie.png')),

              FlatButton(
                child: Text("Glückskeks teilen"),
                color: Colors.brown,
                onPressed: (){
                  Share.share(text + model.txt);
                },
              )

    ]

    )
        )
    );

  }
}