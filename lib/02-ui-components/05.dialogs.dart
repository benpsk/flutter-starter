import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dialogs Test'),
        ),
        body: const MyBody(),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue[400],
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Text('HACKED'),
                content: Text("You're in danger!"),
                actions: [
                  TextButton(onPressed: null, child: Text('OK')),
                  TextButton(onPressed: null, child: Text('Cancel'))
                ],
              ),
            );
          },
          child: const Text(
            'Alert Dialog',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 25, right: 20),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue[400],
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => const SimpleDialog(
                      title: Text('Simple Dialogs'),
                      children: [
                        SimpleDialogOption(
                          child: Text('Option 1'),
                          onPressed: null,
                        ),
                        SimpleDialogOption(
                          child: Text('Option 2'),
                          onPressed: null,
                        )
                      ],
                    ));
          },
          child: const Text(
            'Simple Dialog',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ]);
  }
}
