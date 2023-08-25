import 'package:flutter/material.dart';

class ExplicitAnamition extends StatefulWidget {
  const ExplicitAnamition({Key? key}) : super(key: key);

  @override
  State<ExplicitAnamition> createState() => _ExplicitAnamitionState();
}

class _ExplicitAnamitionState extends State<ExplicitAnamition> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    _scaleAnimation = Tween<double>(begin: 1.0, end: 2.5).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInSine));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //Navigator.pushReplacementNamed(context, '/home');
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.scale(
                scale: _scaleAnimation.value,
                child: FlutterLogo(size: 100),
              );
            },
          ),
        ),
      ),
    );
  }
}
