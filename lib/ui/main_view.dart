import 'package:bootcamp_practices/poo/dog.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late Dog myDog;

  @override
  void initState() {
    super.initState();
    myDog = Dog(longHair: true, color: Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("Preguntas y respuestas"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {


            myDog.bark();
            print(myDog.estaLleno());
            myDog.comer();
            print(myDog.estaLleno());

            myDog.enfermar = true;
            print(myDog.estaEnfermo);

            Dog myGolden = GolderRetriever(longHair: true, color: Colors.red);
            myGolden.bark();

            Dog myShihtzu = ShihTzu(longHair: true, color: Colors.brown);
            myShihtzu.bark();

            Humano yo = Adulto();

            Joven joven = Joven();
            joven.echo();


          },
          child: Text("Press me"),
        ),
      ),
    );
  }
}
