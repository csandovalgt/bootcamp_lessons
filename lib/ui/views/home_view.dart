import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String nombre = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  init() async {
    String name = await fetchName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text(name),
          ],
        ));
  }

  final Future<String> fetchName = Future<String>.delayed(
    const Duration(seconds: 2),
        () => 'Data Loaded',
  );

  /*
  void practice() async {
    String name="Roberto";
    // obtener mensajes
    // para esperar el resultado
    await Future.delayed(Duration(seconds: 2), () {
      name = "mensajes";
    });

    // obtiene tareas
    // no espera el resultado
    Future.delayed(Duration(seconds: 2), () {
      name = "tareas";
    }).then((value) {
      List<Tarea> tareas = value;
    });
    print("Mi nombre es: $name");
  }*/






}
