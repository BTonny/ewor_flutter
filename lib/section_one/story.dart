import 'package:ewor_flutter/modes/person.dart';
import 'package:ewor_flutter/widgets/custom_clippers.dart';
import 'package:ewor_flutter/widgets/image.dart';
import 'package:ewor_flutter/widgets/screen_size.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartUpStory extends StatelessWidget {
  final Person person;
  final Function() onClose;
  const StartUpStory({super.key, required this.person, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipPath(
          clipper: FlippedRightTrapezoidClipper(),
          child: Container(
            height: 540,
            width: (ScreenSize.width(context) / 2) - 200,
            padding: const EdgeInsets.all(10).copyWith(left: 80),
            color: const Color.fromRGBO(32, 32, 32, 1.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: onClose,
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EworImage(
                        image: person.profileImageUrl, height: 100, width: 100),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 460,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  person.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(color: Colors.white),
                                ),
                                const SizedBox(height: 30),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: person.stories.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.arrow_right,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                            child: Text(
                                              person.stories[index],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  ?.copyWith(
                                                      color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Builder(builder: (context) {
                                      String fullName = person.name;
                                      String firstName = fullName.split(" ")[0];
                                      return Text(
                                        "Contact $firstName on LinkedIn to learn about her experiences with EWOR.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.copyWith(color: Colors.white),
                                      );
                                    }),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () async {
                                      final Uri url =
                                          Uri.parse(person.linkedInUrl);
                                      if (!await launchUrl(url)) {
                                        if (kDebugMode) {
                                          print('Could not launch $url');
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content:
                                                  Text("Could not launch $url"),
                                            ),
                                          );
                                        }
                                      }
                                    },
                                    icon: const EworImage(
                                        image: "assets/icons/linkedin.jpeg",
                                        height: 30,
                                        width: 30),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
