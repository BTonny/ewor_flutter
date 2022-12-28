class Person {
  static const String genderMale = "male";
  static const String genderFemale = "female";

  String name;
  String profileImageUrl;
  String imageUrl;
  String gender;
  List<String> stories;
  String linkedInUrl;
  late String pronoun = (gender == genderMale ? "his" : "her");

  Person(
      {required this.name,
      required this.profileImageUrl,
      required this.imageUrl,
      required this.gender,
      required this.stories,
      required this.linkedInUrl});
}

List<Person> persons = [
  Person(
    name: "Beth Kume-Holland",
    profileImageUrl: "assets/images/lady_1_circle.png",
    imageUrl: "assets/images/lady_1.png",
    gender: Person.genderFemale,
    linkedInUrl: "https://www.linkedin.com/in/beth-kume-holland/",
    stories: [
      "Beth joined our 3-months pilot program in March 2020. Together with us and EBIKE Technologies GmbH, Beth created patchwork hub, a job market place for disabled workers.",
      "During her fellowship, we constantly iterated new business models, financial plans and fundraising strategies to help Beth get off the ground.",
      "Today, patchwork hub has been named the UK’s (2020) and Europe’s (2021) most promising startup in the inclusivity space, has won F-factor and many more awards, and has had an impact on many people who would have been worse off in a world without the company.",
    ],
  ),
  Person(
    name: "Yannick Müller",
    profileImageUrl: "assets/images/man_1_circle.png",
    imageUrl: "assets/images/man_1.png",
    gender: Person.genderMale,
    linkedInUrl: "https://www.linkedin.com/in/yajm/",
    stories: [
      "Yannick Müller was part of our fellowship, after which he started his startup Flike.",
      "EWOR connected him to his co-founder and first investor.",
      "Yannick was able to raise 1.6 million dollars for his start-up 6 months after the start of the fellowship.",
    ],
  ),
  Person(
    name: "Fabian Sinn",
    profileImageUrl: "assets/images/man_2_circle.png",
    imageUrl: "assets/images/man_2.png",
    gender: Person.genderMale,
    linkedInUrl: "https://www.linkedin.com/in/fabian-sinn/",
    stories: [
      "Fabian is the Co-Founder & CEO of a startup supporting industrial companies transition to a low carbon economy using technology.",
      "After graduating in Business from the University of Mannheim, he worked at Bain & Company as a Strategy Consultant and later gained an Analytics degree from London Business School.",
      "In 2016, he founded Q-Summit - Germany’s largest student-run entrepreneurship & innovation conference. Whenever possible, he likes to spend time running, on his bike or in the mountains.",
    ],
  ),
  Person(
    name: "Livia Dolle",
    profileImageUrl: "assets/images/lady_2_circle.png",
    imageUrl: "assets/images/lady_2.png",
    gender: Person.genderFemale,
    linkedInUrl: "https://www.linkedin.com/in/liviadolle/",
    stories: [
      "Livia founded takle.io. A platform for buying user-generated-content on demand.",
    ],
  )
];
