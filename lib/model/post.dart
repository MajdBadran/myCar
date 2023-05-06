class Post {
  late int id, price;
  late String name, title, description, image;

  Post(
      {required this.id,
      required this.price,
      required this.name,
      required this.title,
      required this.description,
      required this.image});
}

List<Post> posts = [
  Post(
    id: 1,
    price: 50,
    name: "مارسيدس",
    title: "الدمشقي",
    description: "موديل 2022",
    image: "images/car.jpeg",
  ),
  Post(
    id: 2,
    price: 55,
    name: "مارسيدس",
    title: "الدمشقي",
    description: "موديل 2022",
    image: "images/car.jpeg",
  ),
  Post(
    id: 3,
    price: 60,
    name: "مارسيدس",
    title: "الدمشقي",
    description: "موديل 2022",
    image: "images/car.jpeg",
  ),
  Post(
    id: 4,
    price: 65,
    name: "مارسيدس",
    title: "الدمشقي",
    description: "موديل 2022",
    image: "images/car.jpeg",
  ),
];
