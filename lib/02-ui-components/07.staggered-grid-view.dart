import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
          title: const Text('Staggered grid View'),
        ),
        body: const StaggeredGridView(),
      ),
    );
  }
}

class StaggeredGridView extends StatelessWidget {
  const StaggeredGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: ListView(children: [
        StaggeredGrid.count(
          crossAxisCount: 4,
          children: _cardTile,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ]),
    );
  }
}

List<StaggeredGridTile> _cardTile = <StaggeredGridTile>[
  const StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 3,
      child: BackGroundTile(backgroundColor: Colors.red, icondata: Icons.home)),
  const StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: BackGroundTile(
          backgroundColor: Colors.orange, icondata: Icons.ac_unit)),
  const StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 3,
      child: BackGroundTile(
          backgroundColor: Colors.pink, icondata: Icons.landscape)),
  const StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: BackGroundTile(
          backgroundColor: Colors.green, icondata: Icons.portrait)),
  const StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 3,
      child: BackGroundTile(
          backgroundColor: Colors.deepPurpleAccent,
          icondata: Icons.music_note)),
  const StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: BackGroundTile(
          backgroundColor: Colors.blue, icondata: Icons.access_alarm)),
  const StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 3,
      child: BackGroundTile(
          backgroundColor: Colors.indigo, icondata: Icons.satellite_outlined)),
  const StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: BackGroundTile(
          backgroundColor: Colors.cyan, icondata: Icons.search_sharp)),
  const StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 3,
      child: BackGroundTile(
          backgroundColor: Colors.yellowAccent,
          icondata: Icons.adjust_rounded)),
  const StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
      child: BackGroundTile(
          backgroundColor: Colors.deepOrange, icondata: Icons.attach_money)),
];

class BackGroundTile extends StatelessWidget {
  const BackGroundTile(
      {Key? key, required this.backgroundColor, required this.icondata})
      : super(key: key);

  final Color backgroundColor;
  final IconData icondata;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(
        icondata,
        color: Colors.white,
      ),
    );
  }
}
