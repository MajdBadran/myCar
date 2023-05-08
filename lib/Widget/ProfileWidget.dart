// import 'dart:io';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;
  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
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
