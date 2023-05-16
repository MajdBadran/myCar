import 'package:flutter/material.dart';

class ButtomAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ButtomAuth({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: MaterialButton(
        onPressed: onPressed,
        color: Colors.blue,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(text),
      ),
    );
  }
}
