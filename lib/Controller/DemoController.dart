import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0;

  increment() {
    counter++;
    update(); // update method
  }

  void decrement() {
    if (counter > 0) counter--;
    update();
  }
}
