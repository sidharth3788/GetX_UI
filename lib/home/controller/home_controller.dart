import 'package:get/get.dart';

class CounterController extends GetxController {
  // Product 1 Boat
  RxInt itemcount = 1.obs;
  RxInt itemprice = 500.obs;
  int get totalPrice => itemcount.value * itemprice.value;

  void increment() {
    itemcount++;
  }

  void decrement() {
    if (itemcount >= 2) {
      itemcount--;
    }
  }

// Product 2 Oneplus
  RxInt itemcount1 = 1.obs;
  RxInt itemprice1 = 800.obs;
  int get totalPrice1 => itemcount1.value * itemprice1.value;
  void increment1() {
    itemcount1++;
  }

  void decrement1() {
    if (itemcount1 >= 2) {
      itemcount1--;
    }
  }

// Combined
  int get combinedPrice => totalPrice + totalPrice1;
  int get combinedItem => itemcount.value + itemcount1.value;
}
