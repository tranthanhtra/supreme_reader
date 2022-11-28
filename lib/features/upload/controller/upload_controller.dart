import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class UploadController extends GetxController {
  late Directory? directory = Directory("");

  Future<void> filePicker() async {
    directory = await getApplicationDocumentsDirectory();
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null && directory != null) {
      String? path = result.files.single.path;
      if (path != null) {
        File file = File(path);
        var folder = Directory((directory?.path ?? "") + "/pdf");
        if (!(await folder.exists())) {
          await folder.create();
          print(folder.path);
        }
        var newPath = folder.path + "/${file.path.split('/').last}";
        // print(newPath);
        File newFile = await file.copy(newPath);
      }
    } else {
      // User canceled the picker
    }
  }
}
