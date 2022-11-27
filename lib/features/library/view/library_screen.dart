import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:supreme_reader/components/colors.dart';
import 'package:supreme_reader/components/custom_input_field.dart';
import 'package:supreme_reader/components/text_style.dart';
import 'package:supreme_reader/features/library/controller/library_controller.dart';
import 'package:supreme_reader/features/library/view/book_component.dart';
import 'package:supreme_reader/utils/config.dart';

class LibraryScreen extends StatelessWidget {
  LibraryController homeController = Get.put(LibraryController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getWidth(20), right: getWidth(20), top: getHeight(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomInputField(
            hintText: "Search",
            controller: homeController.searchText,
            labelText: "",
            suffixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset("assets/icons/search_icon.svg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, getHeight(15), 0, getHeight(15)),
            child: const Text(
              "Your Library",
              style: KTextStyle.sectionTitle,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, getHeight(5)),
            child: Container(
              color: AppColors.grey1,
              height: 3,
            ),
          ),
          Expanded(
            child: GridView.count(
              childAspectRatio: 0.7,
              crossAxisCount: 2,
              children: List.generate(
                5,
                (index) => const BookComponent(title: "Harry Potter"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
