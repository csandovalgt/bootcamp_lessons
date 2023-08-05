import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return Container(
        color: Colors.blue,
        height: 200,
        width: double.infinity,
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return Container(
        color: Colors.green,
        height: 200,
        width: double.infinity,
      );
    }
    if (defaultTargetPlatform == TargetPlatform.macOS) {
      if (kIsWeb) {
        return Container(
          color: Colors.indigo,
          height: 200,
          width: double.infinity,
        );
      } else {
        return Container(
          color: Colors.yellow,
          height: 200,
          width: double.infinity,
        );
      }
    } else {
      return Container(
        color: Colors.red,
        height: 200,
        width: double.infinity,
      );
    }
  }
}
