import 'package:flutter/material.dart';

class WorkShopWidget extends StatelessWidget {
  final String imagePath;
  const WorkShopWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return buildImage();
  }

  Widget buildImage() {
    return ClipOval(
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(
          imagePath,
        ),
        height: 100,
      ),
    );
  }
}
