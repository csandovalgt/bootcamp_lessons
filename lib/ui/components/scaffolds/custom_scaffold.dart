import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget? materialAppBar;
  final ObstructingPreferredSizeWidget? cupertinoAppBar;
  final Widget body;
  const CustomScaffold({
    Key? key,
    this.materialAppBar,
    this.cupertinoAppBar,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageScaffold(
        navigationBar: cupertinoAppBar,
        child: body,
      );
    } else {
      return Scaffold(
        appBar: materialAppBar,
        body: body,
      );
    }
  }
}
