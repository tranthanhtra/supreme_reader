import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class UploadController extends GetxController {
  late Directory? directory = Directory("");

  Future<void> filePicker() async {
    directory ??= await getApplicationDocumentsDirectory();
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null && directory != null) {
      String? path = result.files.single.path;
      if (path != null) {
        File file = File(path);
        File newFile = await file
            .copy(directory?.path ?? "" "/${file.path.split('/').last}");
      }
    } else {
      // User canceled the picker
    }
  }
}
