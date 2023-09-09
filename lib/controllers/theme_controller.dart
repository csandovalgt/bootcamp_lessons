import 'package:get/get.dart';

class ThemeController extends GetxController {
  final isDarkTheme = false.obs;
  final title = "Este es el titulo".obs;
  final age = 23.obs;

  changeTheme() {
    isDarkTheme.value = !isDarkTheme.value;
  }
}