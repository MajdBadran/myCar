import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hinttext;
  final String labletext;
  final IconData iconData;
  final bool ObscureText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;

  const CustomTextFormField({
    Key? key,
    required this.hinttext,
    required this.labletext,
    required this.iconData,
    required this.mycontroller,
    required this.ObscureText,
    required this.textInputType,
    required this.textInputAction,
    required this.valid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = new GlobalKey<FormState>();

    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      child: TextFormField(
        validator: valid,
        obscureText: ObscureText,
        controller: mycontroller,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            prefixIcon: Icon(iconData),
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  labletext,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
