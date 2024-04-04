import 'package:blue/screens/video/video.dart';
import 'package:blue/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme(),
      home: const Scaffold(
        body: SafeArea(child: Video()),
      ),
    );
  }
}
