import 'dart:typed_data';
import 'dart:ui';

import 'package:bootcamp_practices/ui/views/details_view.dart';
import 'package:bootcamp_practices/ui/views/home_view.dart';
import 'package:bootcamp_practices/ui/views/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder> {
        '/profile': (BuildContext context) => const ProfileView(),
        '/details' : (BuildContext context) => const DetailsView(),
      },
      onGenerateRoute: (settings) {
        if (settings.name=='profile') {
          final ProfileArguments args = settings.arguments as ProfileArguments;

          return MaterialPageRoute(builder: (context) {
            return ProfileView(
              userName: args.name,
            );
          });
        }
      },
    );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: HomeView(),

    );
  }
}
