import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bootcamp_practices/ui/components/components.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      materialAppBar: AppBar(
        title: const Text("S9 M3"),
      ),
      cupertinoAppBar: const CupertinoNavigationBar(
        middle: Text("S9 M3"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              "Bienvenido, estos son tus últimos posts",
            ),
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
