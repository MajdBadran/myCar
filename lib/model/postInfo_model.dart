class Post {
  late int number;
  late String name;
  late String description;
  late String location;
  late String image;
  Post(
      {required this.number,
      required this.name,
      required this.location,
      required this.description,
      required this.image});
}

// List<Post> posts = [
//   Post(
//     number: 0969614321,
//     name: "الدمشقي",
//     description: "موديل 2022",
//     image: "images/car.jpeg",
//     location: 'دمشق, الحميدية',
//   ),
// ];

class PostPreferences {
  static Post PostInfo = Post(
      number: 0969614321,
      name: "Abode Tahan",
      location: 'دمشق, الحميدية',
      description: "مارسيدس موديل2022 خالية العلام",
      image: "images/car.jpeg");
}
