import 'package:flutter/material.dart';

class ScreenSize {
  // base sizes for screen sizes
  static const sizeDesktop = 1200;
  static const sizeMobile = 600;
  static const sizeTablet = 700; //900

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isMobile(BuildContext context) {
    return width(context) < sizeMobile;
  }

  static bool isTablet(BuildContext context) {
    return width(context) >= sizeMobile && width(context) < sizeDesktop;
  }

  static bool isDesktop(BuildContext context) {
    return width(context) >= sizeDesktop;
  }

  static DeviceScreenType getDeviceType(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    double deviceWidth = mediaQuery.size.width;

    if (deviceWidth > sizeDesktop) {
      return DeviceScreenType.desktop;
    }

    if (deviceWidth > sizeTablet) {
      return DeviceScreenType.tablet;
    }

    return DeviceScreenType.mobile;
  }
}

enum DeviceScreenType {
  mobile,
  tablet,
  desktop,
}

class SizingInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
    required this.deviceScreenType,
    required this.screenSize,
    required this.localWidgetSize,
  });

  @override
  String toString() {
    return 'DeviceScreenType: $deviceScreenType, ScreenSize: $screenSize, LocalWidgetSize: $localWidgetSize';
  }
}
