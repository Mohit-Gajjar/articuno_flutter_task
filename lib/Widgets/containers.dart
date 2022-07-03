import 'package:flutter/material.dart';
import 'package:flutter_task/Constants/constants.dart';
import 'package:flutter_task/Widgets/methods.dart';

class ColoredContainer2 extends StatefulWidget {
  const ColoredContainer2({Key? key}) : super(key: key);

  @override
  State<ColoredContainer2> createState() => _ColoredContainer2State();
}

class _ColoredContainer2State extends State<ColoredContainer2> {
  @override
  void initState() {
    generateRandomColor2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      color: backgroundColor2,
      child: const Center(
        child: Text(
          "2",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ColoredContainer1 extends StatefulWidget {
  const ColoredContainer1({Key? key}) : super(key: key);

  @override
  State<ColoredContainer1> createState() => _ColoredContainer1State();
}

class _ColoredContainer1State extends State<ColoredContainer1> {
  @override
  void initState() {
    generateRandomColor1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      color: backgroundColor1,
      child: const Center(
        child: Text(
          "1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
