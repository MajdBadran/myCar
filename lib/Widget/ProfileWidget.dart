import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  const ProfileWidget({
    Key? key,
    required this.imagePath,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      children: [
        buildImage(),
      ],
    ));
  }

  Widget buildImage() {
    return ClipOval(
      child: Material(
          child: Image(
        image: AssetImage(
          imagePath,
        ),
        width: 117,
        height: 117,
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
