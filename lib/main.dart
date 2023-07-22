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
        title: const Text("Bootcamp"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              width: 200,
              height: 75,
              child: Card(
                elevation: 5,
                child: Center(
                  child: Text("Soy una card"),
                ),
              ),
            ),
            const AspectRatio(
              aspectRatio: 5 / 1,
              child: Card(
                elevation: 5,
                child: Center(
                  child: Text("Soy una card"),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 100,
                maxHeight: 200,
                minWidth: 100,
                maxWidth: 200,
              ),
              child: Container(
                width: 50,
                height: 150,
                color: Colors.indigo,
              ),
            ),
            AspectRatio(
              aspectRatio: 6 / 1,
              child: Container(
                color: Colors.yellow,
                child: Column(
                  children: const [
                    Text("Hola a todos"),
                    Text("Hola solo a mi"),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 90,
              child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Clickeame 1"),
                    ),
                  )),
            ),
            SizedBox(
              width: double.infinity,
              height: 90,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Clickeame 2"),
              ),
            ),
            SizedBox(
              width: 50,
              height: 100,
              child: Container(
                color: Colors.purple,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepOrangeAccent,
            ),
            AspectRatio(
              aspectRatio: 5 / 1,
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/Dash.png',
              ),
            ),
            Align(
              child: Container(
                color: Colors.blue,
                height: 500,
                width: 300,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    'https://docs.flutter.dev/assets/images/dash/Dash.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            Align(
              child: Container(
                color: Colors.green,
                height: 500,
                width: 300,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                    'https://docs.flutter.dev/assets/images/dash/Dash.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 200 ancho: 150 alto
// carta: 5/1
