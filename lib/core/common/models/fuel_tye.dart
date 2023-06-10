

class FuelType {

  final String id;
  final String type;


  const FuelType({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'type': this.type,
    };
  }

  factory FuelType.fromMap(Map<String, dynamic> map) {
    return FuelType(
      id: map['id'].toString(),
      type: map['type'] as String,
    );
  }
}