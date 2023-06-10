class Post {
  late int number;
  late int price;
  late String name;
  late String nameCar;
  late String description;
  late String location;
  late String image;
  Post(
      {required this.number,
      required this.name,
        required this.nameCar,
      required this.price,
      required this.location,
      required this.description,
      required this.image});
}


class PostPreferences {
  static Post PostInfo = Post(
      number: 0969614321,
      name: "Abode Tahan",
      price: 50000,
      nameCar: "مارسيدس",
      location: 'دمشق, الحميدية',
      description: "مارسيدس موديل2022 خالية العلام",
      image: "images/car.jpeg");
}
