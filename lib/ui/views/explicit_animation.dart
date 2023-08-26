import 'package:flutter/material.dart';

class ExplicitAnamition extends StatefulWidget {
  const ExplicitAnamition({Key? key}) : super(key: key);

  @override
  State<ExplicitAnamition> createState() => _ExplicitAnamitionState();
}

class _ExplicitAnamitionState extends State<ExplicitAnamition>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late final Animation<double> _rotationAnimation;
  late final Animation<AlignmentGeometry> _alignmentAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    _alignmentAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 2).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animación explicita"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlignTransition(
              alignment: _alignmentAnimation,
              child: RotationTransition(
                turns: _rotationAnimation,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              _animationController.forward();
            }, child: Text("Animar!"))
          ],
        ),
      ),
    );
  }
}
