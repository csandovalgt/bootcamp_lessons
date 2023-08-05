import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bootcamp_practices/ui/components/components.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomButton(),

        ],
      ),
    );
  }
}
