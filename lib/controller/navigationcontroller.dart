import 'package:coffee_app/view/cart.dart';
import 'package:coffee_app/view/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  List<Widget> screens = [Tabbar(), Cart()];
  int currentIndex = 0;
  changeIndex(int index) {
    currentIndex = index;
    update();
  }
}
