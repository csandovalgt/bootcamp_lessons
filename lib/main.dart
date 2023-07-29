import 'dart:typed_data';
import 'dart:ui';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Bootcamp S8 M2"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: CustomPaint(
                painter: MyCustomPainter(),
                child: Container(
                  width: 200,
                  height: 200,
                  // color: Colors.white,
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(
                  30
                )
              ),
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/Dash.png',
                width: 200,
                height: 200,
              ),
            )
            /*
            Stack(
              children: [
                Image.network(
                  'https://docs.flutter.dev/assets/images/dash/Dash.png',
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      height: 200,
                      color: Colors.black.withOpacity(0),
                    ),
                  ),
                ),
              ],
            ),
            ClipOval(
              clipper: MyCustomClipper(),
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/Dash.png',
              ),
            ),
            ClipPath(
              clipper: MyCustomPathClipper(),
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/Dash.png',
                width: 200,
                height: 200,
              ),
            ),
            ClipRect(
              clipper: MyCustomClipper(),
              child: Align(
                alignment: Alignment.topCenter,
                heightFactor: 0.1,
                child: Image.network(
                  'https://docs.flutter.dev/assets/images/dash/Dash.png',
                ),
              ),
            ),
*/
          ],
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCenter(center: Offset(200, 200), width: 100, height: 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}

class MyCustomPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    print(size);
    Path path = Path();
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    print(size);
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    final path = Path()
      ..lineTo(0, 100)
      ..lineTo(100, 100)
      ..lineTo(100, 0)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
