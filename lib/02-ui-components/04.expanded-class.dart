import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded Class',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Expanded Class"),
        ),
        body: const MyExpanded(),
      ),
    );
  }
}

class MyExpanded extends StatefulWidget {
  const MyExpanded({Key? key}) : super(key: key);

  @override
  State<MyExpanded> createState() => _MyExpandedState();
}

class _MyExpandedState extends State<MyExpanded> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {},
            child: Image.asset('images/lake.jpg'),
          )),
          Expanded(
              flex: 2,
              child: TextButton(
                style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.amber, width: 5)),
                onPressed: () {},
                child: Image.asset('images/pavlova.jpg'),
              )),
          Expanded(
              child: TextButton(
            onPressed: () {},
            child: Image.asset('images/avatar.png'),
          )),
        ],
      ),
    );
  }
}
