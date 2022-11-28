import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class LibraryController extends GetxController {
  TextEditingController searchText = TextEditingController();

  late List listFile = [];

  @override
  void onInit() async {
    await getAllBooks();
    super.onInit();
  }

  Future getAllBooks() async {
    var directory = await getApplicationDocumentsDirectory();

    listFile = Directory(directory.path + "/pdf").listSync();
  }
}
