class Math {
  static int suma({required int primerSumando, required int segundoSumando}) {
    // paso 1: obtener los numeros de la BD
    // paso 2: obtener el cuadrado de los números
    return primerSumando + segundoSumando;
  }

  var function = () {
    print("hola a todos");
  };

  static int multiplicacion({
    required int multiploUno,
    required int multiploDos,
  }) =>
      multiploUno * multiploDos;

  static void log(String message) {
    print(message);
  }

  static int operacion(int a, int b, int function(int x, int y)) {
    return function(a, b);
  }

  static int factorial(int num) {
    if (num <= 1) {
      return 1;
    }
    return num * factorial(num - 1);
  }

  static int potencia(int a, [int? b]) {
    if (b != null) {
      return a * b;
    } else {
      return a * a;
    }
  }

  static int potenciaV2(int a, [int b = 1, int c = 3]) {
    return a * b;
  }

  static bool isTheSame({required int a, int b = 4}) {
    return a == b;
  }
}
