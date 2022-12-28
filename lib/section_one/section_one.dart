import 'package:ewor_flutter/section_one/desktop_ui.dart';
import 'package:ewor_flutter/section_one/small_ui.dart';
import 'package:ewor_flutter/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

import '../widgets/screen_size.dart';

class SectionOne extends StatefulWidget {
  const SectionOne({super.key});

  @override
  State<SectionOne> createState() => _SectionOneState();
}

class _SectionOneState extends State<SectionOne> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return DesktopUI(
            sizingInformation: sizingInformation,
          );
        } else {
          return SmallUI(
            sizingInformation: sizingInformation,
          );
        }
      },
    );
  }
}


// TODO: change to network images
///lady 1 = https://ewor.io/wp-content/themes/ewor/assets/images/Group 9.png
///man 1 = https://ewor.io/wp-content/themes/ewor/assets/images/yanick123.png
///man 2 = https://ewor.io/wp-content/themes/ewor/assets/images/Group 11.png
///lady 2 = https://ewor.io/wp-content/themes/ewor/assets/images/livia-mob.png
