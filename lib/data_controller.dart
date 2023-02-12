import 'package:get/get.dart';

class DataController extends GetxController {
  int number = 0;

  increment() {
    number++;
    update();
  }

  decrement() {
    number--;
    update();
  }
}
