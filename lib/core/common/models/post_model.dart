import 'package:mycar/core/common/models/car_model.dart';
import 'package:mycar/core/models/user_model.dart';

class PostModel {
  final CarModel car;
  final UserModel user;
  final String dateOfPublish;
  final int countInPackage;

  Map<String, dynamic> toMap() {
    return {
      'car': this.car,
      'user': this.user,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      countInPackage: map['count_in_package'] as int,
      dateOfPublish: map['date_of_publish'].toString(),
      car: CarModel.fromMap(map['car'] as Map<String, dynamic>),
      user: UserModel.fromMap(map['user']),
    );
  }

  const PostModel({
    required this.car,
    required this.user,
    required this.dateOfPublish,
    required this.countInPackage,
  });
}
