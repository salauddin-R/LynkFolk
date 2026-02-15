import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void copyToClipboard(String text) async {
  await Clipboard.setData(ClipboardData(text: text));

  Get.snackbar(
    "Copied",
    "Text copied to clipboard",
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.black,
    colorText: Colors.white,
    duration: const Duration(seconds: 2),
  );
}
