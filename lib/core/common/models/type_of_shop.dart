

class TypeOfShop {
  final String id;
  final String name;

  const TypeOfShop({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
    };
  }

  factory TypeOfShop.fromMap(Map<String, dynamic> map) {
    return TypeOfShop(
      id: map['id'].toString(),
      name: map['name'] as String,
    );
  }
}