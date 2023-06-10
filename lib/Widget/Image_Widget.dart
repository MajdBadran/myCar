import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  const ImageWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return buildImage();
  }

  Widget buildImage() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Colors.blueAccent),
        boxShadow: [
          BoxShadow(
              spreadRadius: 3,
              blurRadius: 3,
              color: Colors.blueAccent.withOpacity(0.1)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: AssetImage(
            imagePath,
          ),
        ),
      ),
    );
  }
}
