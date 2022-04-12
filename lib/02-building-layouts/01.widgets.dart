import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('Hello'),
    ),
    body: const MyBody(),
  )));
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/avatar.png',
              height: 120,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 20.0),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(color: Colors.blueGrey),
              child: const Text(
                'John Doe',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
          ],
        ),
        Row(children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: const Text('Hello World'),
          ),
        ])
      ],
    );
  }
}
