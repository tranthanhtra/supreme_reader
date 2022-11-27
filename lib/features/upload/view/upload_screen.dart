import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supreme_reader/components/colors.dart';
import 'package:supreme_reader/components/custom_button.dart';
import 'package:supreme_reader/components/text_style.dart';
import 'package:supreme_reader/features/upload/controller/upload_controller.dart';
import 'package:supreme_reader/utils/config.dart';

class UploadScreen extends StatelessWidget {
  UploadScreen({Key? key}) : super(key: key);

  UploadController uploadController = Get.put(UploadController());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        height: getHeight(59),
        width: getWidth(254),
        child: CustomButton(
          onClick: () async {
            await uploadController.filePicker();
          },
          text: 'Upload',
          backgroundColor: AppColors.button,
          borderColor: AppColors.button,
          textStyle: KTextStyle.buttonStyle,
        ),
      ),
    );
  }
}
