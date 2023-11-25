mixin UtilsMixin {
  int cuadrado({required int val}) {
    return val * val;
  }
}

mixin ApiService {
  bool fetchUser();

  bool postUser();
}
