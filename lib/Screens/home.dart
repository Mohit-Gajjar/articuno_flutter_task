import 'package:flutter/material.dart';
import 'package:flutter_task/Widgets/containers.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> array = [
    const ColoredContainer1(),
    const ColoredContainer2(),
  ];
  swapLogic() {
    Widget widget;
    if (array.isNotEmpty) {
      widget = array[0];
      array[0] = array[1];
      array[1] = widget;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 150,
        child: ListView.builder(
            itemCount: array.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return array[index];
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: swapLogic,
        child: const Icon(Icons.repeat),
      ),
    );
  }
}
