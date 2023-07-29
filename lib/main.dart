import 'dart:typed_data';
import 'dart:ui';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Bootcamp S8 M2"),
      ),
      body: SingleChildScrollView(
        child: /*Stack(
          children: [
            Image.network(
              'https://docs.flutter.dev/assets/images/dash/Dash.png',
              width: 250,
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ),*/

            Column(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.indigo,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 10, top: 60),
                width: 200,
                height: 400,
                color: Colors.black87,
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(2),
                  child: Container(
                    //puerta
                    width: 300,
                    height: 400,
                    color: Colors.orangeAccent,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 30),

                    child: Container(
                      // pomo
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        shape: BoxShape.circle,
                      ),
                      width: 30,
                      height: 30,
                    ),
                  ),
                )),
            /*Transform.rotate(
                angle: 2,
                child: Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.indigo,
                  ),
                ),),
            Transform.translate(offset: Offset(10,0),
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.indigo,
              ),
            ),),
            Transform.scale(
              //scale: 1,
              scaleY: 0.2,
              child:Center(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow,
                ),
              ),
            ),*/

            /*Image.network(
              'https://docs.flutter.dev/assets/images/dash/Dash.png',
              width: 250,
            ),
            ClipOval(
              clipper: OtherCustomClipper(),
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/Dash.png',
                width: 250,
              ),
            ),
            ClipRect(
              clipper: OtherCustomClipper(),
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/Dash.png',
                width: 250,
              ),
            ),*/
            /*
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            ClipOval(
              child: Container(
                width: 300,
                height: 100,
                color: Colors.blue,
              ),
            ),*/
            /*Container(
              child: Text(
                "Hola a todos",
                style: TextStyle(
                    fontSize: 40, color: Colors.black.withOpacity(0.4)),
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.5),
                borderRadius: BorderRadius.circular(40)
              ),
            ),
            Opacity(
              opacity: 0.2,
              child: Text(
                "Hola a todos",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            RotatedBox(
              quarterTurns: 8,
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/Dash.png',
                width: 250,
              ),
            ),



            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 20,
            ),
            Center(
              child: CustomPaint(
                painter: CustomTrianglePainter(),
                child: Container(
                  width: 300,
                  height: 300,
                  // color: Colors.white,
                ),
              ),
            ),
            ClipPath(
              clipper: DashClipper(),
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/Dash.png',
                width: 250,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.purple,
                  border: Border.all(
                    color: Colors.lightGreenAccent,
                    width: 2,
                  )
              ),
              child: Container(
                height: 100,
                width: 100,
              ),
            ),*/

            /*
            Container(
              width: 200,
              height: 100,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Image.network(
                  'https://docs.flutter.dev/assets/images/dash/Dash.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(30)),
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: Image.network(
                    'https://docs.flutter.dev/assets/images/dash/Dash.png',
                    width: 200,
                    height: 200,
                  ),),
            ),
            Container(
              margin: const EdgeInsets.only(left: 60, top: 60),
              width: 200,
              height: 400,
              color: Colors.black87,

              child: Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(0.7),
                child: Container( //puerta
                  width: 300,
                  height: 400,
                  color: Colors.orangeAccent,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 30),

                  child: Container( // pomo
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                    ),
                    width: 30,
                    height: 30,
                  ),
                ),
              )
            ),
            const RotatedBox(
              quarterTurns: 4,
              child: Text('Hello World!'),
            )*/
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

/// custom clippers
class OtherCustomClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width / 3, size.height / 2);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    if (kDebugMode) {
      return true;
    } else {
      return false;
    }
  }
}

class MyOtherCustomClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCenter(center: Offset(100, 100), width: 100, height: 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
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

class DashClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final pathRombo = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, size.height / 2)
      ..lineTo(size.width / 2, 0);

    return pathRombo;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

/// custom painter
///

class CustomTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint0 = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final path0 = Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0);

    canvas.drawPath(path0, paint0);

    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;

    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, size.height / 2)
      ..lineTo(size.width / 2, 0);

    canvas.drawPath(path, paint);

    final paint2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final pathRombo = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, size.height / 2)
      ..lineTo(size.width / 2, 0);

    canvas.drawPath(pathRombo, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
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
