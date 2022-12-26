import 'package:ewor_flutter/main.dart';
import 'package:ewor_flutter/modes/person.dart';
import 'package:ewor_flutter/widgets/gradient_colored_button.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_clippers.dart';
import 'story_tile.dart';

class SectionOne extends StatefulWidget {
  const SectionOne({super.key});

  @override
  State<SectionOne> createState() => _SectionOneState();
}

class _SectionOneState extends State<SectionOne> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "EWOR",
                            style:
                                Theme.of(context).textTheme.headline1?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Text(
                            "For the crazy ones.",
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
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
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ClipPath(
                      clipper:
                          RightTrapezoidClipper(), // trapezoid clipper to create the right trapezoid shape
                      child: Container(
                        color: const Color(0xffeaeaea),
                        padding: const EdgeInsets.all(26).copyWith(left: 200),
                        child: Row(
                          children: const [
                            Text(
                                "WE HELP YOU TO FIND A STARTUP IDEA & BUILD AN IMPACTFUL COMPANY"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GradientColoredButton(
                          onPressed: () {},
                          text: "APPLY",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: ScreenSize.height(context) / 1.8,
                      width: 550,
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
                              overlayPosition:
                                  const OverlayPosition(top: 60, left: 100),
                              clipper: StoryClipperOne(),
                              backgroundColor: const Color(0xffD8CABF),
                            ),
                          ),
                          Positioned(
                            top: 30,
                            left: 60,
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
                          Positioned(
                            top: 290,
                            left: 90,
                            bottom: 0,
                            child: StoryTile(
                              person: Person(
                                name: "Fabian Sinn",
                                imageUrl: "assets/images/man_2.png",
                                gender: Person.genderMale,
                              ),
                              overlayPosition:
                                  const OverlayPosition(top: 60, left: 100),
                              clipper: StoryClipperOne(),
                              backgroundColor: const Color(0xffFBB03B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.only(left: ScreenSize.width(context) / 4),
            child: ClipPath(
              clipper: FlippedRightTrapezoidClipper(),
              child: Container(
                color: Theme.of(context).primaryColor.withOpacity(0.9),
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                child: Row(
                  children: [
                    Text(
                      "The EWOR Fellowship application cycle is now open ",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    GradientColoredButton(
                      text: "APPLY",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          ?.copyWith(fontWeight: FontWeight.bold),
                      hoverStyle:
                          Theme.of(context).textTheme.subtitle2?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                      gradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.9),
                        Colors.white.withOpacity(0.9)
                      ]),
                      hoverGradient: const LinearGradient(
                          colors: [Color(0xffff6900), Color(0xffff0000)]),
                      height: 36,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 8),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// TODO: change to network images
///lady 1 = https://ewor.io/wp-content/themes/ewor/assets/images/Group 9.png
///man 1 = https://ewor.io/wp-content/themes/ewor/assets/images/yanick123.png
///man 2 = https://ewor.io/wp-content/themes/ewor/assets/images/Group 11.png
