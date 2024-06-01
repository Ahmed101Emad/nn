import 'package:coffee_app/controller/navigationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      init: NavigationController(),
      builder: (controller) => Scaffold(
        body: controller.screens[controller.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
          ],
          onTap: (index) => controller.changeIndex(index),
        ),
      ),
    );
  }
}
