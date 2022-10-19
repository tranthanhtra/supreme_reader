import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supreme_reader/components/navigation_bar.dart';
import 'package:supreme_reader/features/library/view/library_screen.dart';
import 'package:supreme_reader/features/profile/view/profile_screen.dart';
import 'package:supreme_reader/features/upload/view/upload_screen.dart';
import 'package:supreme_reader/global_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: PageView(
        controller: Get.put(GlobalController()).pageController,
        children: [
          LibraryScreen(),
          UploadScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
