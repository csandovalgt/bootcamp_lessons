import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String name = "";

  /// Para hacer uso de animate_do
  late AnimationController _controller;
  bool shouldAnimate = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    shouldAnimate = true;
  }

  /// animaciones implicitas
  bool isAnimating = false;
  double containerHeight = 0;
  double containerWidth = 0;
  double topPos = 0;
  Color color = Colors.black.withOpacity(0.5);
  Color containerColor = Colors.indigo;
  double sliderValue = 0;
  double padding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BounceInLeft(
          child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/explicit');
              },
              child: Icon(
                Icons.menu,
              )),
        ),
        title: SlideInDown(
          child: Text("home view"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name),

          /// animate do
          /* SlideInDown(
            /// acá asocio el controlador que me retorna el SlideInDown al controlador que cree anteriormente
            controller: (controller) => _controller = controller,
            duration: Duration(milliseconds: 100),
            animate: shouldAnimate,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.indigo,
            ),
          ),*/

          Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: containerWidth,
                height: containerHeight,
                color: containerColor,
              ),
              AnimatedPadding(
                padding: EdgeInsets.symmetric(
                  vertical: padding,
                ),
                duration: const Duration(milliseconds: 200),
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: containerWidth,
                )
              ),
            ],
          ),
          /// Ejemplo de animated positioned para mover un contenedor de posición dentro de otro contenedor
          /*Container(
            height: 300,
            width: double.infinity,
            color: Colors.indigo,
            child: Stack(
              children: [
                AnimatedPositioned(
                  top: topPos,
                  left: 0,
                  right: 0,
                  duration: Duration(milliseconds: 200),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    color: color,
                    height: 50,
                    width: double.infinity,
                  ),
                ),
              ],
            ),
          ),*/
          const SizedBox(
            height: 30,
          ),
          const Text("Ancho del contenedor"),
          Slider(
              max: 200,
              min: 0,
              value: containerWidth,
              onChanged: (newVal) {
                setState(() {
                  containerWidth = newVal;
                });
              }),
          const Text("Alto del contenedor"),
          Slider(
              max: 200,
              min: 0,
              value: containerHeight,
              onChanged: (newVal) {
                setState(() {
                  containerHeight = newVal;
                });
              }),
          const Text("Padding del segundo contenedor"),
          Slider(
              max: 200,
              min: 0,
              value: padding,
              onChanged: (newVal) {
                setState(() {
                  padding = newVal;
                });
              }),
          ElevatedButton(
            onPressed: () {
              /// para ejecutar la animación de animate do manualmente
              /*
              _controller.reset();
              _controller.forward();
              */

              /// Ejemplo de animated positioned para mover un contenedor de posición dentro de otro contenedor
              /*setState(() {
                if (topPos == 0) {
                  topPos = 50;
                  color = Colors.red.withOpacity(0.5);
                } else if (topPos == 50) {
                  topPos = 100;
                  color = Colors.yellow.withOpacity(0.5);
                } else if (topPos == 100) {
                  topPos = 150;
                  color = Colors.green.withOpacity(0.5);
                } else if (topPos == 150) {
                  topPos = 200;
                } else {
                  topPos = 0;
                }
              });*/

              /*setState(() {
                if (containerHeight == 200) {
                  containerHeight = 100;
                  containerWidth = 200;
                  containerColor = Colors.green;
                } else {
                  containerHeight = 200;
                  containerWidth = 100;
                  containerColor = Colors.yellow;
                }

              });*/
              /*_controller.reset();
              _controller.forward();
              Future.delayed(Duration(seconds: 1), () {
                _controller.reverse();
              });*/
            },
            child: Text("Animar"),
          ),
        ],
      ),
    );
  }
}

/// practica 1:
/// implementar una animación en animate_do para
/// el app bar
