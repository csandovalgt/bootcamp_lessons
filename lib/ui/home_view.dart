import 'package:bootcamp_practices/constants.dart';
import 'package:bootcamp_practices/ui/mixin.dart';
import 'package:bootcamp_practices/ui/string_mixin.dart';
import 'package:bootcamp_practices/ui/ui_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with UtilsMixin, StringUtilsMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              print(cuadrado(val: 3));
              print(capitalize("value"));
            },
            child: Text("Click me"),
          ),
        ],
      ),
    );
  }
}
