import 'package:get/state_manager.dart';

class CalculatorController extends GetxController {
  var sum = 0.0.obs;
  var a = 0.0.obs;
  var b = 0.0.obs;

  updateSum(newSum) {
    sum.value = newSum;
  }

  updateValues(a, b) {
    this.a = a;
    this.b = b;
  }
}
