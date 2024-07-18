import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Text(
                    'e - Wallet',
                    style: TextStyle(
                      color: Color(0xFF041444),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.notifications),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.black, Color(0xFF041444)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$20000.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '8157 0618 7881 5706',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Card Holder',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'SIDHARTH P',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Expiry Date',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '12/24',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transactions',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF041444)),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF041444),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                  ),
                  child: ListView(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.shopping_cart),
                        title: Text(
                          'Grocery Shopping',
                          style: TextStyle(
                              color: Color(0xFF041444),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Walmart',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: Text(
                          '-\$100.00',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.restaurant),
                        title: Text(
                          'Dinner',
                          style: TextStyle(
                              color: Color(0xFF041444),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Restaurant',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          '-\$50.00',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.payments),
                        title: Text(
                          'Salary',
                          style: TextStyle(
                              color: Color(0xFF041444),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Company',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: Text(
                          '+\$2000.00',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.local_gas_station),
                        title: Text(
                          'Fuel',
                          style: TextStyle(
                              color: Color(0xFF041444),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Gas Station',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: Text(
                          '-\$40.00',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.payments),
                        title: Text(
                          'Salary',
                          style: TextStyle(
                              color: Color(0xFF041444),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Company',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: Text(
                          '+\$2000.00',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.shopping_cart),
                        title: Text(
                          'Grocery Shopping',
                          style: TextStyle(
                              color: Color(0xFF041444),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Walmart',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: Text(
                          '-\$100.00',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.restaurant),
                        title: Text(
                          'Dinner',
                          style: TextStyle(
                              color: Color(0xFF041444),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Restaurant',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: Text(
                          '-\$50.00',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.local_gas_station),
                        title: Text(
                          'Fuel',
                          style: TextStyle(
                              color: Color(0xFF041444),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Gas Station',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: Text(
                          '-\$40.00',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.payments),
                        title: Text(
                          'Salary',
                          style: TextStyle(
                              color: Color(0xFF041444),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Company',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: Text(
                          '+\$2000.00',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF041444),
            borderRadius: BorderRadius.circular(24),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.credit_card, color: Colors.white),
                label: 'Cards',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.white),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
