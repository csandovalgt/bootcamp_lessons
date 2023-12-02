import 'package:flutter/material.dart';

class Dog {
  final bool longHair;
  final Color color;
  final String? name;
  bool _lleno = false;
  bool _estaEnfermo = false;

  Dog({
    required this.longHair,
    required this.color,
    this.name,
  });

  void bark() {
    print("barking....");
  }

  void comer() {
    _lleno = true;
  }

  void irAlBanio() {
    _lleno = false;
  }

  void vomitar() {
    _lleno = false;
  }

  bool estaLleno() {
    return _lleno;
  }

  set enfermar(bool estaEnfermo) => _estaEnfermo = estaEnfermo;

  bool get estaEnfermo => _estaEnfermo;
}

class SerVivo {
  respirar() {
    print("estoy respirando");
  }
}

class Marciano {

}

class GolderRetriever extends Dog {
  GolderRetriever({required super.longHair, required super.color});

  @override
  void bark() {
    super.bark();
    print("soy un golden ladrando");
  }
}

class ShihTzu extends Dog{
  ShihTzu({required super.longHair, required super.color});
}




class Item {
  String pregunta;
  String respuestaCorrecta;

  Item({
    required this.pregunta,
    required this.respuestaCorrecta,
  });

  void update(String newPregunta) {
    pregunta = newPregunta;
  }

  bool verificar(String respuesta) {
    return respuesta == respuestaCorrecta;
  }

  String get respCorrecta => respuestaCorrecta;
}


abstract class Humano {
  void comer();
  void dormir();
}

class Adulto extends Humano {
  @override
  void comer() {
    print("estoy comiendo lento");
  }

  @override
  void dormir() {
    print("zzz");
  }

}

class Joven extends Humano with Test implements UtilidadesPersonas  {
  @override
  void comer() {
    print("estoy comiendo mas rapido");
  }

  @override
  void dormir() {
    print("zzz");
  }

}

class UtilidadesPersonas {

}

mixin Test {

}