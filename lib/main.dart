import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class StatefulColorfulTile extends StatefulWidget {
  final String text;
  const StatefulColorfulTile({Key? key, required this.text}) : super(key: key);

  @override
  State<StatefulColorfulTile> createState() => _StatefulColorfulTileState();
}

class _StatefulColorfulTileState extends State<StatefulColorfulTile> {
  Color? myColor;
  @override
  void initState() {
    myColor = Color(
      (math.Random().nextDouble() * 0xFFFFFF).toInt(),
    ).withOpacity(
      1.0,
    );
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        color: myColor,
        child: Center(
          child: Text(widget.text),
        ));
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // We have to use keys in the stateful widgets when we are shuffling the widget in a tree, when we are not using keys then the widget won't rebuilt but it changes the updates in a stateful widget, state remains same when are not using the keys.
  // in this case example if we dont use the keys then only the text is changing, means flutter is updating the changes not rebuilding the whole widget.
  // when we use keys it rebuilds the widget in widget esspecially when we are shuffling the widgets it uses key to identify the widget hence it does not use the state of same other widget.
  List<Widget> containers = [
    const Padding(
      padding: EdgeInsets.all(10),
      child: StatefulColorfulTile(
        text: '1',
        key: GlobalObjectKey(0),
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(10),
      child: StatefulColorfulTile(
        text: '2',
        key: GlobalObjectKey(1),
      ),
    )
  ];

  void swapColour() {
    setState(() {
      containers.insert(1, containers.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: containers,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => swapColour(),
        child: const Icon(Icons.change_circle_outlined),
      ),
    );
  }
}
