import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
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
          return SimpleDialog(
            title: Text("Set backup account"),
            children: [
              SimpleDialogOption(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.orange,
                    size: 35,
                  ),
                  dense: true,
                  title: Text("user01@gmail.com"),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.green,
                    size: 35,
                  ),
                  dense: true,
                  title: Text("user02@gmail.com"),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.add_circle,
                    color: Colors.grey,
                    size: 35,
                  ),
                  dense: true,
                  title: Text("Add account"),
                ),
              ),

            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () {
            _materialDialog(context);
          },
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
