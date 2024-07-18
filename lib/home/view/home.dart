import 'package:flutter/material.dart';
import 'package:getx_state_management/home/controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = HomeController();
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('data'),
        ),
      ),
    ));
  }
}
