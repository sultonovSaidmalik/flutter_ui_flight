import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dialog());
}

class Dialog extends StatelessWidget {
  const Dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LearnDielog(),
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}

class LearnDielog extends StatefulWidget {
  const LearnDielog({Key? key}) : super(key: key);

  @override
  State<LearnDielog> createState() => _LearnDielogState();
}

class _LearnDielogState extends State<LearnDielog> {
  void _learnDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Reset Settings?"),
            titlePadding: const EdgeInsets.all(20),
            titleTextStyle: const TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
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
                child: Text('Cancel'.toUpperCase()),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Accept'.toUpperCase()),
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
            title: const Text('Reset Settings?'),
            content: const Text(
                'This will reset your device to its\ndefault factory settings.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'.toUpperCase()),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Confirm'.toUpperCase()),
              ),
            ],
          );
        });
  }

  void _adaptiveDialog(BuildContext context) {
    (Platform.isAndroid) ? _learnDialog(context) : _cupertinoDialog(context);
  }

  void _materialDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Set backup account'),
            clipBehavior: Clip.antiAlias,
            children: [
              SimpleDialogOption(
                onPressed: () {},
                child: const ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  leading: Icon(
                    Icons.account_circle_sharp,
                    color: Colors.red,
                    size: 35,
                  ),
                  title: Text('User01@gmail.com'),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: const ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  leading: Icon(
                    Icons.account_circle_sharp,
                    color: Colors.red,
                    size: 35,
                  ),
                  title: Text('User01@gmail.com'),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: const ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  leading: Icon(
                    Icons.add_circle_outline_rounded,
                    color: Colors.grey,
                    size: 35,
                  ),
                  title: Text('User01@gmail.com'),
                ),
              ),
            ],
          );
        });
  }

  void _dataDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoDatePicker(
            onDateTimeChanged: (DateTime value) {
              debugPrint(value.toString());
            },
            maximumYear: 2,
            backgroundColor: Colors.white,
            mode: CupertinoDatePickerMode.time,
          );
        });
  }

  void customDatePickerDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DatePickerDialog(
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2025),
            currentDate: DateTime(2023),
            initialEntryMode: DatePickerEntryMode.calendar,
            initialCalendarMode: DatePickerMode.day,
            selectableDayPredicate: (check) {
              if (check == DateTime(2023)) {
                return false;
              } else {
                return true;
              }
            },
            cancelText: "CANCEL",
            confirmText: "CONFIRM",
            helpText: "CALENDAR",
            errorFormatText: "Error Format Text",
            errorInvalidText: "Error Invalid Text",
            fieldHintText: "Field Hint Text",
            fieldLabelText: "Field Label Text",
            keyboardType: TextInputType.number,
            restorationId: "Restoration ID",
            onDatePickerModeChange: (a) {
              debugPrint("$a");
            });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 130),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                _materialDialog(context);
              },
              child: const Text("TAP "),
            ),
            FilledButton(
              onPressed: () {
                _cupertinoDialog(context);
              },
              child: const Text("TAP "),
            ),
            FilledButton(
              onPressed: () {
                _dataDialog(context);
              },
              child: const Text("TAP "),
            ),
            FilledButton(
              onPressed: () {
                _adaptiveDialog(context);
              },
              child: const Text("TAP "),
            ),
            FilledButton(
              onPressed: () {
                customDatePickerDialogue(context);
              },
              child: const Text("TAP "),
            ),
          ],
        ),
      ),
    );
  }
}
