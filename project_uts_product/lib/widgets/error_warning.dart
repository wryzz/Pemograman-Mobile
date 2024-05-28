import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_uts_product/utils/app_colors.dart';

class Message {
  static void productErrorOrWarning(
      String productName, String productOrWarning) {
    Get.snackbar(productName, productOrWarning,
        backgroundColor: AppColors.mainColor,
        titleText: Text(
          productName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
          ),
        ));
  }
}
