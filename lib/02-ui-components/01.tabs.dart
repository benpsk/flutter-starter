import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TabBar Test',
        home: DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: 48.0,
                // title: const Text('TabBar Test'),
                // bottom: const TabBar(
                title: const TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.music_note),
                    ),
                    Tab(
                      icon: Icon(Icons.music_video),
                    ),
                    Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                    Tab(
                      icon: Icon(Icons.grade),
                    ),
                    Tab(
                      icon: Icon(Icons.email),
                    )
                  ],
                ),
              ),
              body: const TabBarView(children: [
                Icon(Icons.music_note),
                Icon(Icons.music_video),
                Icon(Icons.camera_alt),
                Icon(Icons.grade),
                Icon(Icons.email)
              ]),
            )));
  }
}
