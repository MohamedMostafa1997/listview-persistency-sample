import 'package:flutter/material.dart';
import 'package:listview_persistency_sample/list_item.dart';
import 'package:listview_persistency_sample/my_controller.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final MyController controller = MyController();

  void changeCheckStatus(int index) {
    setState(() {
      controller.changeCheckStatus(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: controller.itemsNames.length,
            itemBuilder: (context, index) {
              return MyListItem(
                  controller.itemsNames[index],
                  index,
                  () => changeCheckStatus(index),
                  controller.checkedItemsIndexes.contains(index));
            }),
      ),
    );
  }
}
