class Company {
  late int number;
  late String name, location, desc, image;

  Company(
      {required this.name,
        required this.number,
        required this.location,
        required this.desc,
        required this.image});
}

class CompanyPreferences {
  static Company companyInfo = Company(
    image: "images/kia.jpeg",
    name: 'Company KIA',
    number: 2244550,
    desc: 'وكالة كيا رسميا في سوريا',
    location: "دمشق, طريق الطار",
  );
}
