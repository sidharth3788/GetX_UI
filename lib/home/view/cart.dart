import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  final int _itemCount = 0;
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
                  Icon(Icons.keyboard_backspace, size: 40.0),
                  Spacer(),
                  Expanded(
                    child: Text(
                      'My Cart',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock,
                        color: Colors.red,
                      ),
                      Spacer(),
                      Text(
                        'You have 3 items in your list chart',
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
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 64,
                        maxHeight: 64,
                      ),
                      child: Image.asset('assets/list_content/boat.jpg'),
                    ),
                    title: const Text(
                      'Boat Earbuds',
                      style: TextStyle(
                          color: Color(0xFF041444),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('2500.0 Rs',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: const Text(
                      '-\$100.00',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 64,
                        maxHeight: 64,
                      ),
                      child: Image.asset('assets/list_content/boat.jpg'),
                    ),
                    title: const Text(
                      'Boat Earbuds',
                      style: TextStyle(
                          color: Color(0xFF041444),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('2500.0 Rs',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: const Text(
                      '-\$100.00',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 64,
                        maxHeight: 64,
                      ),
                      child: Image.asset('assets/list_content/boat.jpg'),
                    ),
                    title: const Text(
                      'Boat Earbuds',
                      style: TextStyle(
                          color: Color(0xFF041444),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('2500.0 Rs',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: const Text(
                      '-\$100.00',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const SizedBox(
              height: 24,
            ),
            TextButton(onPressed: () {}, child: const Text('data'))
          ],
        ),
      ),
    );
  }
}
