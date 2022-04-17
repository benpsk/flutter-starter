import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Progress Indicator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Progress Indicator'),
        ),
        body: const ProgressIndicator(),
      ),
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  const ProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularProgressIndicator(
            backgroundColor: Colors.redAccent,
            valueColor: AlwaysStoppedAnimation(Colors.green),
            strokeWidth: 10,
          ),
          SizedBox(
            height: 50,
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.amberAccent,
            valueColor: AlwaysStoppedAnimation(Colors.redAccent),
            minHeight: 16,
          ),
        ],
      ),
    );
  }
}
