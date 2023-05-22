import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const LearnDialog(),
    );
  }
}

class LearnDialog extends StatelessWidget {
  const LearnDialog({Key? key}) : super(key: key);

  void _materialDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Reset settings?"),
            // titlePadding: EdgeInsets.all(20),
            titleTextStyle: const TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            content: const Text(
                "This will reset your device to its\ndefault factory settings."),
            contentTextStyle: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Cancel".toUpperCase()),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Accept".toUpperCase()),
              ),
            ],
          );
        });
  }

  void _cupertinoDialog(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text("Reset settings?"),
            content: const Text(
                "This will reset your device to its\ndefault factory settings."),
            actions: [
              CupertinoButton(
                child: Text("Cancel".toUpperCase()),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoButton(
                child: Text("Accept".toUpperCase()),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  void _adaptiveDialog(BuildContext context) {
    if(Platform.isIOS){
      return _cupertinoDialog(context);
    }else{
      return _materialDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () {
            _adaptiveDialog(context);
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
