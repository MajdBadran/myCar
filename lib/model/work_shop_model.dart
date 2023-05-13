class WorkShop {
  late int number;
  late String name, location, desc, image;

  WorkShop(
      {required this.name,
      required this.number,
      required this.location,
      required this.desc,
      required this.image});
}

class WorkShopPreferences {
  static WorkShop workinfo = WorkShop(
    image: "images/workshop.jpg",
    name: 'ورشة النصر',
    number: 0969614321,
    desc: 'ورشة النصر تصليح كافة انواع السيارات الحديثة بأحدث الطرق',
    location: "دمشق, حوش بلاس",
  );
}
