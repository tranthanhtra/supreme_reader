import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supreme_reader/components/app_bar.dart';
import 'package:supreme_reader/components/colors.dart';
import 'package:supreme_reader/components/custom_button.dart';
import 'package:supreme_reader/components/text_style.dart';
import 'package:supreme_reader/features/read/view/read_screen.dart';
import 'package:supreme_reader/utils/config.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              // color: AppColors.bookBackground,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  AppColors.bookBackground,
                  AppColors.whiteShade,
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: getHeight(261),
                  width: getWidth(190),
                  child: Image.asset("assets/icons/pdf.png"),
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(0, getHeight(20), 0, getHeight(20)),
                  child: Text(
                    title,
                    style: KTextStyle.previewTitleStyle,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(0, getHeight(20), 0, getHeight(40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "2020",
                            style: KTextStyle.textFieldHeading,
                          ),
                          Text(
                            "Added in",
                            style: KTextStyle.normalStyle,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            getWidth(20), 0, getWidth(20), 0),
                        child: Container(
                          height: 40,
                          width: 2,
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "110",
                            style: KTextStyle.textFieldHeading,
                          ),
                          Text(
                            "Pages",
                            style: KTextStyle.normalStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  "fdsaklfjdklsajfkdjslkajfldsa",
                  style: KTextStyle.normalStyle,
                ),
              ],
            ),
          ),
          const CustomAppBar(),
          Positioned(
            bottom: getHeight(20),
            left: getWidth(50),
            right: getWidth(50),
            child: SizedBox(
              height: getHeight(59),
              child: CustomButton(
                text: "Read",
                onClick: () => {Get.to(ReadScreen())},
                backgroundColor: AppColors.button,
                borderColor: AppColors.button,
                textStyle: KTextStyle.buttonStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
