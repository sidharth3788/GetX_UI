import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    if (count >= 1) {
      setState(() {
        count--;
      });
    } else {
      print('Atleast one count needed');
    }
  }

  @override
  Widget build(BuildContext context) {
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
                      'Boat Earbuds',
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
                              decrement();
                            },
                            child: const Text('-')),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(count.toString()),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              increment();
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
                      'Boat Earbuds Pro',
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
                              decrement();
                            },
                            child: const Text('-')),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(count.toString()),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              increment();
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
