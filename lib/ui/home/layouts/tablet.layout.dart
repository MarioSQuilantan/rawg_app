import 'package:flutter/material.dart';

import '../widgets/app_text.widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText.paragraph('Tablet'),
      ),
      body: const Center(
        child: AppText.h1('Title'),
      ),
    );
  }
}
