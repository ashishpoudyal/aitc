import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_app/config/theme/constant/image_path.dart';
import 'package:task_app/config/theme/constant/storage_constant.dart';
import 'package:task_app/features/adhyaya/screen/adhaya_screen.dart';
import 'package:task_app/routes/app_routes.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  final getStorage = GetStorage();

  bool isOnBoarded = false;
  @override
  void initState() {
    if (getStorage.read(StorageConstant.isOnBoarded) != null) {
      isOnBoarded = getStorage.read(StorageConstant.isOnBoarded);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoarded) {
        const AdhayaListingRoute().pushReplacement(context);
      } else {
        const OnBoardingRoute().go(context);
      }
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Image.asset(
        ImagePath.splashImagePath,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
