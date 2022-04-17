import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String appTilte = 'UI Orientation';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTilte,
      home: UiOrientation(appTitle: appTilte),
    );
  }
}

class UiOrientation extends StatelessWidget {
  const UiOrientation({Key? key, required this.appTitle}) : super(key: key);

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 3 : 4,
              children: List.generate(
                  100,
                  (index) => Container(
                        decoration:
                            const BoxDecoration(color: Colors.amberAccent),
                        margin: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "A $index",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                      )),
            );
          },
        ));
  }
}
