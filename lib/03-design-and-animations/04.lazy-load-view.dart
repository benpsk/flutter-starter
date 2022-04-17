import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lazy load View'),
        ),
        body: const LazyLoadView(),
      ),
    );
  }
}

class LazyLoadView extends StatefulWidget {
  const LazyLoadView({Key? key}) : super(key: key);

  @override
  State<LazyLoadView> createState() => _LazyLoadViewState();
}

class _LazyLoadViewState extends State<LazyLoadView> {
  List<int> data = [];
  int currentLength = 0;

  final int increment = 10;
  bool isLoading = false;

  @override
  void initState() {
    _loadMore();
    super.initState();
  }

  Future _loadMore() async {
    setState(() {
      isLoading = true;
    });

    // add in an artificial delay
    await Future.delayed(const Duration(seconds: 2));
    for (int i = currentLength; i <= currentLength + increment; i++) {
      data.add(i);
    }

    setState(() {
      isLoading = false;
      currentLength = data.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LazyLoadScrollView(
        isLoading: isLoading,
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, position) {
              return DemoItem(
                position: position,
              );
            }),
        onEndOfPage: () => _loadMore());
  }
}

class DemoItem extends StatelessWidget {
  final int position;
  const DemoItem({Key? key, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.deepOrange,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text("Item $position"),
              ],
            ),
            const Text(
                "It is a portable runtime for high-quality mobile apps and primarily based on the C++ language. It implements Flutter core libraries that include animation and graphics, file and network I/O, plugin architecture, accessibility support, and a dart runtime for developing, compiling, and running Flutter applications. It takes Google's open-source graphics library, Skia, to render low-level graphics.")
          ],
        ),
      ),
    );
  }
}
