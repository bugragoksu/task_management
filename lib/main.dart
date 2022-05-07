import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_management/presentation/auth/auth_screen.dart';
import 'package:task_management/presentation/core/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.instance!.appTheme,
      home: const AuthScreen(),
    );
  }
}
