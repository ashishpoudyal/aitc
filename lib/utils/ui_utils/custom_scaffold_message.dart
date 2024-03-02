import 'package:flutter/material.dart';
import 'package:task_app/config/theme/app_color.dart';

class CustomScaffoldMessenger {
  CustomScaffoldMessenger.error(String text, BuildContext context,
      {SnackBarBehavior? behavior = SnackBarBehavior.floating}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white)),
        backgroundColor: Colors.red.shade400,
        showCloseIcon: true,
        duration: const Duration(seconds: 3),
        behavior: behavior ?? SnackBarBehavior.floating));
  }
  CustomScaffoldMessenger.success(String text, BuildContext context,
      {SnackBarBehavior? behavior = SnackBarBehavior.floating}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white)),
        backgroundColor: AppColor.primaryColor,
        duration: const Duration(seconds: 3),
        showCloseIcon: true,
        behavior: behavior ?? SnackBarBehavior.floating));
  }
  CustomScaffoldMessenger.warning(String text, BuildContext context,
      {SnackBarBehavior? behavior = SnackBarBehavior.floating}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white)),
        backgroundColor: Colors.orange[500],
        showCloseIcon: true,
        duration: const Duration(seconds: 3),
        behavior: behavior ?? SnackBarBehavior.floating));
  }
  CustomScaffoldMessenger.info(String text, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white)),
        showCloseIcon: true,
        backgroundColor: Colors.blue[800],
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating));
  }
}
