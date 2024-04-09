import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePageViewModel extends GetxController {
  Rxn<File> imageFile = Rxn<File>();
  Rxn<File> lastUploadedFile = Rxn<File>();

  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      lastUploadedFile.value = File(pickedFile.path);
    }
  }

  void viewLastUploaded() {
    if (lastUploadedFile.value != null) {
      imageFile.value = lastUploadedFile.value;
    }
  }
}
