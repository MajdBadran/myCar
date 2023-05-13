class User {
  final String image;
  final String name;
  final int number;
  final String type;
  final String location;
  final String about;

  User(
      {required this.image,
      required this.name,
      required this.number,
      required this.type,
      required this.location,
      required this.about});
}

class UserPreferences {
  static User myUser = User(
      image: "images/user.jpg",
      name: 'Abode Tahan',
      number: 0969614321,
      type: 'عادي',
      location: "دمشق, القزاز",
      about: "");
}
