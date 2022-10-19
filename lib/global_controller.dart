import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  PageController pageController = PageController(initialPage: 0, keepPage: true);

  RxInt currentPage = 0.obs;

  void onChangeTab(int value) {
    try {
      currentPage.value = value;
      pageController.jumpToPage(value);
    } catch (e) {
      currentPage.value = value;
      pageController = PageController(initialPage: value, keepPage: true);
    }
  }
}