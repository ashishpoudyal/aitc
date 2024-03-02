import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await GetStorage.init();
  // var getStorage = GetStorage();
  // getStorage.erase();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: EasyLocalization(
        supportedLocales: const [
          Locale('ne'),
          Locale('en'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('ne'),
        child: const App(),
      ),
    );
  }
}
