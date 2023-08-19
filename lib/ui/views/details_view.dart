import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soy Profile View"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text("Soy details View"),
          ElevatedButton(onPressed: () {

          }, child: Text("Go  view"),)
        ],
      ),
    );
  }
}
