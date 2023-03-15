import 'package:flutter/material.dart';

import '../../core/layout/screen.layout.dart';
import 'layouts/desktop.layout.dart';
import 'layouts/phone.layout.dart';
import 'layouts/tablet.layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ScreenLayout(
        phoneLayout: PhoneLayout(),
        tabletLayout: TabletLayout(),
        desktopLayout: DesktopLayout(),
      ),
    );
  }
}
