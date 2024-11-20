import 'package:flutter/material.dart';
import 'package:shop_task/presentation/screens/home_screen.dart';

import 'core/theme_manager.dart';

void main() {
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
      theme:getApplicationTheme(),
      
      home:  HomeScreen()
    );
  }
}

