class BrandType {

  final String id;
  final String name;

  const BrandType({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
    };
  }

  factory BrandType.fromMap(Map<String, dynamic> map) {
    return BrandType(
      id: map['id'].toString(),
      name: map['name'] as String,
    );
  }
}