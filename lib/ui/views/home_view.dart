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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BounceInLeft(
          child: Icon(
            Icons.menu,
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
          BounceInDown(
            animate: true,
            controller: (controller) => _controller = controller,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _controller.reset();
              _controller.forward();
              Future.delayed(Duration(seconds: 1), () {
                _controller.reverse();
              });
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