import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/function/alertexit.dart';
import 'package:mycar/home/homescreen.dart';
import '../Widget/textFormField.dart';
import '../function/validInPut.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: WillPopScope(
          onWillPop: AlertExitApp,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "أدخل كلمة المرور الجديدة",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                CustomTextFormField(
                  valid: (val) {
                    return validInPut(val!, 9, 15, "phone");
                  },
                  hinttext: 'كلمة المرور الجديدة',
                  labletext: 'كلمة المرور ',
                  iconData: Icons.phone,
                  obscureText: false,
                  textInputType: TextInputType.number,
                  textInputAction: TextInputAction.go,
                  mycontroller: null,
                ),
                CustomTextFormField(
                  valid: (val) {
                    return validInPut(val!, 9, 15, "phone");
                  },
                  hinttext: 'تأكيد كلمة المرور',
                  labletext: 'التاكد',
                  iconData: Icons.phone,
                  obscureText: false,
                  textInputType: TextInputType.number,
                  textInputAction: TextInputAction.go,
                  mycontroller: null,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Get.to(HomeScreen());
                    },
                    child: Text("حفظ"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
