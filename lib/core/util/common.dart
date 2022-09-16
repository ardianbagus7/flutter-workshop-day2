import 'package:flutter/material.dart';
import 'package:seabank_app/core/util/colors.dart';

class CommonUtil {
  static void showSnackbar(
    BuildContext context, {
    required String title,
  }) {
    final snackBar = SnackBar(
      content: Text(title),
      backgroundColor: CustomColors.primary,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
