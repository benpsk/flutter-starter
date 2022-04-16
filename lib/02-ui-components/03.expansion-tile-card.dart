import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpansionTileCard',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyHomePage(title: 'ExpansionTileCard Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            child: ExpansionTileCard(
              key: cardA,
              leading: CircleAvatar(child: Image.asset('images/avatar.png')),
              title: const Text('Tap to Expand!'),
              subtitle: const Text('It has the GFG Logo.'),
              children: [
                const Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Image.asset('images/avatar.png')),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ExpansionTileCard(
              key: cardB,
              leading: CircleAvatar(child: Image.asset('images/avatar.png')),
              title: const Text('Tap to Expand!'),
              subtitle: const Text('It has the GFG Logo.'),
              children: [
                const Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Image.asset('images/avatar.png')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
