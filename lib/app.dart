import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/config/theme/theme.dart';
import 'package:task_app/routes/app_routes.dart';

final GoRouter _router = GoRouter(
  initialLocation: "/splash",
  debugLogDiagnostics: true,
  routes: $appRoutes,
  observers: [ClearFocusOnPop()],
);

// This widget is the root of your application.
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  dimissKeyboard(BuildContext context) {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    FocusScope.of(context).unfocus();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          dimissKeyboard(context);
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: MaterialApp.router(
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
          routeInformationProvider: _router.routeInformationProvider,
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        ));
  }
}

//Clearing the focus when pop out of the screen
class ClearFocusOnPop extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration.zero);
      FocusManager.instance.primaryFocus?.unfocus();
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    });
    super.didPop(route, previousRoute);
  }
}
