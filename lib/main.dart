import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ChotaCart/providers/app_provider.dart';
import 'package:ChotaCart/screens/splash.dart';
import 'package:ChotaCart/util/const.dart';

import 'util/const.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (BuildContext context, AppProvider appProvider, Widget child) {
        return MaterialApp(
          key: appProvider.key,
          debugShowCheckedModeBanner: false,
          navigatorKey: appProvider.navigatorKey,
          title: Constants.appName,
          theme: appProvider.theme,
          darkTheme: Constants.lightTheme,
          home: SplashScreen(),
        );
      },
    );
  }
}