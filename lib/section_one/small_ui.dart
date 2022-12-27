import 'package:flutter/material.dart';

import '../modes/person.dart';
import '../widgets/custom_clippers.dart';
import '../widgets/gradient_colored_button.dart';
import '../widgets/screen_size.dart';
import 'story_tile.dart';

class SmallUI extends StatelessWidget {
  final SizingInformation sizingInformation;
  const SmallUI({super.key, required this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    double storiesHeight = ScreenSize.isMobile(context) ? 140 : 190;
    double storiesWidth = ScreenSize.isMobile(context) ? 290 : 420;

    double secondTopPositioning = ScreenSize.isMobile(context) ? 6 : 10;
    double secondLeftPositioning = ScreenSize.isMobile(context) ? 48 : 60;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: storiesHeight,
            width: storiesWidth,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: StoryTile(
                    person: Person(
                      name: "Beth Kume-Holland",
                      imageUrl: "assets/images/lady_1.png",
                      gender: Person.genderFemale,
                    ),
                    overlayPosition: const OverlayPosition(top: 60, left: 100),
                    clipper: StoryClipperOne(),
                    backgroundColor: const Color(0xffD8CABF),
                  ),
                ),
                Positioned(
                  top: secondTopPositioning,
                  left: secondLeftPositioning,
                  child: StoryTile(
                    person: Person(
                      name: "Yannick Müller",
                      imageUrl: "assets/images/man_1.png",
                      gender: Person.genderMale,
                    ),
                    isMiddle: true,
                    overlayPosition:
                        const OverlayPosition(bottom: 60, left: 200),
                    clipper: StoryClipperTwo(),
                    backgroundColor: const Color(0xff5DA599),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Builder(builder: (context) {
            TextStyle? titleStyle = ScreenSize.isMobile(context)
                ? Theme.of(context).textTheme.headline2
                : Theme.of(context).textTheme.headline1;
            return Text(
              "EWOR",
              style: titleStyle?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            );
          }),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: storiesHeight,
            width: storiesWidth,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: StoryTile(
                    person: Person(
                      name: "Fabian Sinn",
                      imageUrl: "assets/images/man_2.png",
                      gender: Person.genderMale,
                    ),
                    overlayPosition: const OverlayPosition(top: 60, left: 100),
                    clipper: StoryClipperOne(),
                    backgroundColor: const Color(0xffFBB03B),
                  ),
                ),
                Positioned(
                  top: secondTopPositioning,
                  left: secondLeftPositioning,
                  child: StoryTile(
                    person: Person(
                      name: "Livia Dolle",
                      imageUrl: "assets/images/lady_2.png",
                      gender: Person.genderMale,
                    ),
                    isMiddle: true,
                    overlayPosition:
                        const OverlayPosition(bottom: 60, left: 200),
                    clipper: StoryClipperTwo(),
                    backgroundColor: const Color(0xff5DA599),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "For the crazy ones.",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("For those who think different."),
          const SizedBox(
            height: 20,
          ),
          Text(
            "For the ones who make change happen.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            color: const Color(0xffeaeaea),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: const [
                      Text(
                        "WE HELP YOU TO FIND A STARTUP IDEA & BUILD AN IMPACTFUL COMPANY",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradientColoredButton(
                onPressed: () {},
                text: "APPLY",
                height: 50,
                padding: EdgeInsets.zero,
                width: ScreenSize.width(context) -
                    (ScreenSize.isMobile(context) ? 150 : 300),
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "The EWOR Fellowship application cycle is now open",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
