import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_app/config/theme/app_color.dart';
import 'package:task_app/config/theme/constant/storage_constant.dart';
import 'package:task_app/routes/app_routes.dart';

class SkipTextWidget extends ConsumerStatefulWidget {
  const SkipTextWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SkipTextWidgetState();
}

class _SkipTextWidgetState extends ConsumerState<SkipTextWidget> {
  GetStorage getStorage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          getStorage.write(StorageConstant.isOnBoarded, true);
          const HomeRoute().go(context);
        },
        child: Text(
          "Skip",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w500, color: AppColor.whiteColor),
        ));
  }
}
