class Person {
  static const String genderMale = "male";
  static const String genderFemale = "female";

  String name;
  String imageUrl;
  String gender;
  late String pronoun = (gender == genderMale ? "his" : "her");

  Person({required this.name, required this.imageUrl, required this.gender});
}
