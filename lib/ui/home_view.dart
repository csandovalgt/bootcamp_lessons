import 'package:bootcamp_practices/constants.dart';
import 'package:bootcamp_practices/ui/mixin.dart';
import 'package:bootcamp_practices/ui/string_mixin.dart';
import 'package:bootcamp_practices/ui/ui_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:calculator/calculator.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with UtilsMixin, StringUtilsMixin {
  late Random random;
  late List<int> list;
  late List<Estudiante> estudiantes;
  String search = "";
  Estudiante mario = Estudiante(name: "Mario", lastName: "Martinez", id: "abc");

  @override
  void initState() {
    super.initState();
    list = [10, 20, 30, 40, 50, 60, 70, 80];
    random = Random();
    estudiantes = [
      Estudiante(id: '1', name: 'Mario', lastName: 'Martinez'),
      Estudiante(id: '2', name: 'Maria', lastName: 'Perez'),
      Estudiante(id: '3', name: 'Lucia', lastName: 'Rodriguez'),
      mario,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            onChanged: (String value) {
              setState(() {
                search = value;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
                itemCount: estudiantes
                    .where((Estudiante estudianteSearch) =>
                        estudianteSearch.name.contains(search))
                    .toList()
                    .length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(estudiantes
                        .where((Estudiante estudianteSearch) =>
                            estudianteSearch.name.contains(search))
                        .toList()[index]
                        .toString()),
                  );
                }),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                /// para eliminar elementos de la lista
                /*
                estudiantes.remove(mario);
                estudiantes.removeAt(0);*/

                /// para eliminar todos los elementos de la lista
                //estudiantes.clear();

                /// para revertir el orden de mi lista
                //estudiantes = estudiantes.reversed.toList();

                /// instrucciones equivalentes
                Estudiante? filtrado = estudiantes
                    .where((element) => element.id == '22')
                    .toList()
                    .firstOrNull;
                Estudiante filtradov2 =
                    estudiantes.firstWhere((element) => element.id == '22');

                ///
                //estudiantes.contains(element);
              });
            },
            child: Text("Agrega elemento"),
          ),
          /*Expanded(
            child: ListView.builder(
                itemCount: estudiantes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(estudiantes[index].toString()),
                  );
                }),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                estudiantes.add(
                    Estudiante(name: "Mario", lastName: "Martinez", id: "abc"));
                estudiantes.add(Estudiante(
                    name: "Carlos", lastName: "Sandoval", id: "12121X"));
                estudiantes.add(mario);
              });
            },
            child: Text("Agrega elemento"),
          ),
          ElevatedButton(
            onPressed: () {
              /*
              /// agrega un nuevo elemento a la lista

              for (var myNumber in list) {
                print("El número es:  $myNumber");
              }

              for (int myValue in list) {
                print("Nuevo formato y el valor es: $myValue");
              }

              /// length = longitud de la lista
              for (int i = 0; i < list.length; i++) {
                print("indice es:  $i");
                print("formato clásico y el valor es: ${list[i]}");
              }*/

              /// list[indice] me retorna el valor en ese indice
              /*print(list[0]);

              int myIndex = list.indexOf(31);
              if (myIndex >= 0) {
                print(list.elementAt(myIndex));
              } else {
                print("No existe el elemento");
              }

              try {
                int myIndex = list.indexOf(31);
                print(list.elementAt(myIndex));
              } catch (e, stacktrace) {
                print("No existe el elemento");
              }*/

              /*
              for (Estudiante estudiante in estudiantes) {
                print(estudiante.toString());
              }

              int index = estudiantes.indexOf(mario);
              print("index is: $index");*/

              /// crea una lista filtrada con los valores que cumplen la condición
              List<Estudiante> filtered = estudiantes
                  .where((Estudiante estudianteSearch) =>
                      estudianteSearch.id == estudiante['id'])
                  .toList();

              Estudiante? nuevoEstudiante = filtered.firstOrNull;
              if (nuevoEstudiante != null) {
                print(nuevoEstudiante.toString());
              } else {
                print("estudiante no existe");
              }
            },
            child: Text("Click me"),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: estudiantes
                    .where((Estudiante estudianteSearch) =>
                estudianteSearch.id == estudiante['id'])
                    .toList().length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(estudiantes
                        .where((Estudiante estudianteSearch) =>
                    estudianteSearch.id == estudiante['id'])
                        .toList()[index].toString()),
                  );
                }),
          ),*/
        ],
      ),
    );
  }

  Map estudiante = {
    "name": "Mario",
    "lastName": "Martinez",
    "id": "abc",
  };
}

class Estudiante {
  final String id;
  final String name;
  final String lastName;

  Estudiante({
    required this.id,
    required this.name,
    required this.lastName,
  });

  @override
  String toString() {
    return "Estudiante con id $id es:  $name $lastName";
  }
}
