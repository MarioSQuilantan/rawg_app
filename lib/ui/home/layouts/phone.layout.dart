import 'package:flutter/material.dart';

import '../widgets/app_text.widget.dart';

class PhoneLayout extends StatelessWidget {
  const PhoneLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText.paragraph('Phone'),
      ),
      body: const Center(
        child: AppText.h1('Title'),
      ),
    );
  }
}
