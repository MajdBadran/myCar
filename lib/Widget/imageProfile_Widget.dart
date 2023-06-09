import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/home/profile.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  const ProfileWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
          onTap: (){
            Get.to(Profile());
          },
      child: buildImage(),
    ));
  }

  Widget buildImage() {
    return ClipOval(
      child: Material(
          child: Image(
        image: AssetImage(
          imagePath,
        ),
        width: 120,
        height: 120,
      )),
    );
  }

  buildCircle(
          {required double all, required Color color, required Widget child}) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
