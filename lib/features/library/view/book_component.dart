import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supreme_reader/components/colors.dart';
import 'package:supreme_reader/components/text_style.dart';
import 'package:supreme_reader/utils/config.dart';

class BookComponent extends StatelessWidget {
  const BookComponent({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getHeight(20)),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          color: AppColors.lightBlue.withOpacity(0.15),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(getWidth(10), 0, getWidth(10), 0),
              child: SizedBox(
                height: getHeight(100),
                width: getWidth(60),
                child: Image.asset("assets/icons/pdf.png"),
              ),
            ),
            Text(
              title,
              style: KTextStyle.listTitleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
