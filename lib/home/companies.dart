import 'package:flutter/material.dart';

class Companies extends StatelessWidget {
  const Companies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الشركات",
          style: TextStyle(fontFamily: "Mirza", fontSize: 30),
        ),
      ),
    );
  }
}
