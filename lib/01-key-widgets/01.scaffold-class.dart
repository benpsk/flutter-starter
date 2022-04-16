import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Drawer Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer Testing'),
          // shape:
          // RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment),
              tooltip: 'Comment Icon',
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              tooltip: 'Settings',
            )
          ],
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: Text(
                  'GeeksforGeeks',
                  style: TextStyle(color: Colors.white54, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Item 1'),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('Ittem 2'),
              )
            ],
          ),
        ),
        floatingActionButton: const FloatingActionButton(
          elevation: 10.0,
          onPressed: null,
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note), label: 'Music')
          ],
          onTap: (int indexOfItem) {},
        ),
      ),
    );
  }
}
