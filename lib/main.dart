import 'package:bootcamp_practices/ui/home_view.dart';
import 'package:bootcamp_practices/ui/main_view.dart';
import 'package:bootcamp_practices/ui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: UITheme.getTheme(
        const String.fromEnvironment('EMPRESA'),
      ),
      home: MainView(),
    );
  }
}
