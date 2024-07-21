import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/home/controller/home_controller.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    var itemcontroller = Get.put(CounterController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SafeArea(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.keyboard_backspace,
                    size: 32.0,
                    color: Color(0xFF041444),
                  ),
                  Spacer(),
                  Expanded(
                    child: Text(
                      'My Cart',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF041444)),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock,
                        color: Colors.red,
                      ),
                      Spacer(),
                      Text(
                        'You have 2 items in your list chart',
                        style: TextStyle(fontSize: 16, color: Colors.red),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 100,
                        maxWidth: 100,
                      ),
                      child: Image.asset('assets/list_content/boat.jpg'),
                    ),
                    title: const Text(
                      'Boat',
                      style: TextStyle(
                          color: Color(0xFF041444),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    subtitle: Obx(
                      () => RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${itemcontroller.totalPrice}',
                              style: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const TextSpan(
                              text: '.0 ₹',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                            onPressed: () {
                              itemcontroller.decrement();
                            },
                            child: const Text('-')),
                        const SizedBox(
                          width: 10,
                        ),
                        Obx(() => Text(
                              '${itemcontroller.itemcount}',
                              style: const TextStyle(
                                color: Color(0xFF041444),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              itemcontroller.increment();
                            },
                            child: const Text('+')),
                      ],
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 100,
                        maxWidth: 100,
                      ),
                      child: Image.asset('assets/list_content/boat.jpg'),
                    ),
                    title: const Text(
                      'OnePlus',
                      style: TextStyle(
                          color: Color(0xFF041444),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    subtitle: Obx(
                      () => RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${itemcontroller.totalPrice1}',
                              style: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const TextSpan(
                              text: '.0 ₹',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {
                            itemcontroller.decrement1();
                          },
                          child: const Text('-'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Obx(() => Text(
                              '${itemcontroller.itemcount1}',
                              style: const TextStyle(
                                color: Color(0xFF041444),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            itemcontroller.increment1();
                          },
                          child: const Text('+'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 270,
                  ),
                  ListTile(
                    leading: const Text(
                      'Total Items',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Obx(
                      () => RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${itemcontroller.combinedItem}',
                              style: const TextStyle(
                                color: Color(0xFF041444),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const TextSpan(
                              text: ' Items',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF041444),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Text(
                      'Total Amount',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Obx(
                      () => RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${itemcontroller.combinedPrice}',
                              style: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const TextSpan(
                              text: '.0 ₹',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF041444),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              child: const Text(
                'Checkout',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
