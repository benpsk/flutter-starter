import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Rich Text',
      home: MyBody(),
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text Title'),
      ),
      body: Center(
        child: RichText(
            text: TextSpan(
                text: 'Hello ',
                style: DefaultTextStyle.of(context).style,
                children: const [
              TextSpan(
                  text: 'World',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24.0,
                      fontStyle: FontStyle.italic)),
            ])),
      ),
    );
  }
}
