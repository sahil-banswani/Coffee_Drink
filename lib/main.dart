import 'package:flutter/material.dart';

import 'dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
    );
  }
}
