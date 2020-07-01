import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:share/share.dart';

class FortuneCookiePage extends StatelessWidget {

  String text = '';
  String subject = '';

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
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Share text:',
                  hintText: 'Enter some text and/or link to share',
          )
        )
    ]
    )
        )
    );

  }
}