import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/home/controller/home_controller.dart';

class ObxPage extends StatelessWidget {
  const ObxPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Builder(builder: (controller) {
            return TextButton(
              onPressed: () {},
              child: const Text('Button'),
            );
          }),
        ),
      ),
    );
  }
}
