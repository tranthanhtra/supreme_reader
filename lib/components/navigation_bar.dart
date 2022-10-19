import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:supreme_reader/components/colors.dart';
import 'package:supreme_reader/components/text_style.dart';
import 'package:supreme_reader/global_controller.dart';
import 'package:supreme_reader/utils/config.dart';

const List<Map<String, dynamic>> pages = [
  {
    "image": "assets/icons/home.svg",
    "title": "Home",
  },
  {
    "image": "assets/icons/upload.svg",
    "title": "Upload",
  },
  {
    "image": "assets/icons/profile.svg",
    "title": "Profile",
  },
];

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(80),
      color: AppColors.grey,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
            pages.length,
            (index) => NavigationButton(
                asset: pages[index]["image"],
                index: index,
                title: pages[index]["title"])),
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  NavigationButton(
      {Key? key, required this.asset, required this.index, required this.title})
      : super(key: key);

  GlobalController globalController = Get.put(GlobalController());

  final String asset;
  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GestureDetector(
        onTap: () {
          globalController.onChangeTab(index);
        },
        child: SizedBox(
          width: getWidth(70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 5,
                color: globalController.currentPage.value == index
                    ? AppColors.heavyBlue
                    : AppColors.grey,
              ),
              SvgPicture.asset(
                asset,
                width: getWidth(24),
                height: getHeight(30),
                color: globalController.currentPage.value == index
                    ? AppColors.heavyBlue
                    : AppColors.greyShade,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: getWidth(20),
                  fontWeight: FontWeight.w700,
                  color: globalController.currentPage.value == index
                      ? AppColors.heavyBlue
                      : AppColors.greyShade,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
