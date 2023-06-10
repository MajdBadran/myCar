

class UserModel {

  final String id;
  final String email;
  final String phone;
  final String subPackageId;
  final String name;
  const UserModel({
    required this.name,
    required this.id,
    required this.email,
    required this.phone,
    required this.subPackageId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'email': this.email,
      'phone': this.phone,
      'subPackageId': this.subPackageId,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      id: map['id'].toString(),
      email: map['email'] as String,
      phone: map['cell_phone'] as String,
      subPackageId: map['subscription_package_id'] as String,
    );
  }
}