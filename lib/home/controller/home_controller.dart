import 'package:get/get.dart';

class CounterController extends GetxController {
  var itemcount = 1.obs;

  void increment() {
    itemcount++;
  }

  void decrement() {
    if (itemcount >= 2) {
      itemcount--;
    } else {
      print('Atleast one count needed');
    }
  }

  var itemcount1 = 1.obs;

  void increment1() {
    itemcount1++;
  }

  void decrement1() {
    if (itemcount1 >= 2) {
      itemcount1--;
    } else {
      print('Atleast one count needed');
    }
  }
}
