import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:supreme_reader/components/colors.dart';
import 'package:supreme_reader/components/text_style.dart';
import 'package:supreme_reader/features/preview/view/preview_screen.dart';
import 'package:supreme_reader/utils/config.dart';

class BookComponent extends StatelessWidget {
  const BookComponent({Key? key, required this.title, required this.index})
      : super(key: key);

  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => PreviewScreen(
            title: title,
          )),
      child: SizedBox(
        height: getHeight(250),
        width: getWidth(115),
        // decoration: BoxDecoration(
        //   color: AppColors.lightBlue.withOpacity(0.15),
        //   borderRadius: BorderRadius.circular(10),
        // ),
        child: Column(
          children: [
            SizedBox(
              height: getHeight(181),
              width: getWidth(115),
              child: Image.asset("assets/icons/pdf.png"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, getHeight(15), 0, getHeight(15)),
              child: Text(
                title,
                style: KTextStyle.listTitleTextStyle,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
