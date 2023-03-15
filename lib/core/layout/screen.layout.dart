import 'package:flutter/material.dart';

import '../values/enums.dart';

class ScreenLayout extends StatelessWidget {
  const ScreenLayout({
    super.key,
    required this.phoneLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final Widget phoneLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      Device deviceType = _onSelectDevice(constraints);

      switch (deviceType) {
        case Device.phone:
          return phoneLayout;
        case Device.tablet:
          return tabletLayout;
        case Device.desktop:
          return desktopLayout;
        default:
          return const SizedBox.shrink();
      }
    });
  }

  Device _onSelectDevice(BoxConstraints constraints) {
    if (constraints.maxWidth < 500) {
      return Device.phone;
    }
    if (constraints.maxWidth < 1300) {
      return Device.tablet;
    }
    return Device.desktop;
  }
}
