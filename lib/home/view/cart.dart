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
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      '2549.0 ₹',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
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
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      '3549.0 ₹',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                            onPressed: () {
                              itemcontroller.decrement1();
                            },
                            child: const Text('-')),
                        const SizedBox(
                          width: 10,
                        ),
                        Obx(() => Text('${itemcontroller.itemcount1}')),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              itemcontroller.increment1();
                            },
                            child: const Text('+')),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  const ListTile(
                    leading: Text(
                      'Items',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '6098.0 ₹',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF041444)),
                    ),
                  ),
                  const ListTile(
                    leading: Text(
                      'Discount',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '-98.0 ₹',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF041444)),
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: Text(
                      'Total',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '-6000.0 ₹',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF041444)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF041444),
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                child: const Text(
                  'CHECKOUT',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
