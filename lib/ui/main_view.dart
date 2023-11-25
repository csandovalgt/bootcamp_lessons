import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<String> questions = [
    '¿Cuál es tu color favorito?', // Ejemplo de pregunta
    '¿Cuál es tu comida preferida?', // Ejemplo de pregunta
    '¿Cuál es tu película favorita?', // Ejemplo de pregunta
    '¿Cuál es tu destino de viaje soñado?', // Ejemplo de pregunta
    '¿Cuál es tu libro favorito?', // Ejemplo de pregunta
  ];

  List<String> selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("Preguntas y respuestas"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
            ),
            child: InkWell(
              onTap: () {
                setState(() {});
              },
              child: const Icon(
                Icons.check,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  selected.clear();
                });
              },
              child: const Icon(
                Icons.clear,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (BuildContext context, int index) {
                  return CheckboxListTile(
                    value: selected.contains(questions[index]),
                    onChanged: (value) {
                      setState(() {
                        if (selected.contains(questions[index])) {
                          selected.remove(questions[index]);
                        } else {
                          selected.add(questions[index]);
                        }
                      });
                    },
                    title: Text(questions[index]),
                  );
                }),
          ),
          Text("Longitud de la lista:  ${selected.length}"),
        ],
      ),
    );
  }
}
