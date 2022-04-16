import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal List',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Horizontal List'),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          child: ListView(
            children: [
              Container(
                height: 480.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/01-avengers.jpg'),
                        fit: BoxFit.fill),
                    shape: BoxShape.rectangle),
              ),
              Container(
                height: 480.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/02-avengers.jpg'),
                        fit: BoxFit.fill)),
              ),
              Container(
                height: 480.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/03-avengers.jpg'),
                        fit: BoxFit.fill)),
              ),
              Container(
                height: 480.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/04-avengers.jpg'),
                        fit: BoxFit.fill)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
