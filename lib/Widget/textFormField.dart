import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hinttext;
  final String labletext;
  final IconData iconData;
  final bool? obscureText;
  final void Function()? onTapIcon;
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
    required this.textInputType,
    required this.textInputAction,
    required this.valid,
    this.obscureText,
    this.onTapIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      child: TextFormField(
        validator: valid,
        obscureText: obscureText == null || obscureText == false ? false : true,
        controller: mycontroller,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            prefixIcon: InkWell(
              child: Icon(iconData),
              onTap: () {
                onTapIcon;
              },
            ),
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
