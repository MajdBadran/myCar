

class TransmitionType {
  final String id;
  final String type;


  const TransmitionType({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'type': this.type,
    };
  }

  factory TransmitionType.fromMap(Map<String, dynamic> map) {
    return TransmitionType(
      id: map['id'].toString(),
      type: map['type'] as String,
    );
  }
}