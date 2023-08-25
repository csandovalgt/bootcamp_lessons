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
  late AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool isAnimating = false;
  double containerHeight = 100;
  double containerWidth = 200;
  double topPos = 0;
  Color color = Colors.black.withOpacity(0.5);
  double _containerWidth = 100.0;
  double _containerHeight = 100.0;

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
            )
          ),
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
          TweenAnimationBuilder(
            duration: Duration(seconds: 2),
            tween: Tween<double>(begin: 100.0, end: 200.0),
            builder: (BuildContext context, double value, Widget? child) {
              return Container(
                width: value,
                height: _containerHeight,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Animated Container',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),

          /* AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: containerWidth,
            height: containerHeight,
            color: Colors.red,
          ),*/
          /*BounceInDown(
            animate: true,
            controller: (controller) => _controller = controller,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),*/
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
                    )
                ),
              ],
            )
          ),*/
          ElevatedButton(
            onPressed: () {
              /*setState(() {
                if (topPos==0) {
                  topPos = 50;
                  color = Colors.red.withOpacity(0.5);
                } else if (topPos==50) {
                  topPos = 100;
                  color = Colors.yellow.withOpacity(0.5);
                } else if (topPos==100) {
                  topPos = 150;
                  color = Colors.green.withOpacity(0.5);
                } else if (topPos==150) {
                  topPos = 200;
                } else {
                  topPos = 0;
                }

              });

*/
              /*setState(() {
                if (containerHeight == 200) {
                  containerHeight = 100;
                  containerWidth = 200;
                } else {
                  containerHeight = 200;
                  containerWidth = 100;
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
