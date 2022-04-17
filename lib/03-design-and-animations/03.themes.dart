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
      title: 'Custom Themes',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.green,
          fontFamily: 'Georgia',
          textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
              bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'))),
      home: const MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Themes'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Hello World',
                  style: Theme.of(context).textTheme.headline6,
                )),
            Text(
              'Custom Themes',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
              colorScheme: Theme.of(context)
                  .colorScheme
                  .copyWith(secondary: Colors.red)),
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.arrow_circle_up),
          )),
    );
  }
}
