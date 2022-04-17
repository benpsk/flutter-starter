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
          title: const Text('Custom Fonts'),
        ),
        body: const SafeArea(
            child: Center(
          child: Text(
            'Flutter Custom Fonts',
            style: TextStyle(
                fontFamily: 'Courier Prime',
                fontSize: 24.0,
                color: Colors.green),
          ),
        )),
      ),
    );
  }
}
