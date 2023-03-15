import 'package:flutter/material.dart';
import 'core/theme/theme.dart';
import 'ui/home/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RAWG app',
      theme: theme,
      home: const HomePage(),
    );
  }
}
