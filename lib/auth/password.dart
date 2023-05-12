import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/controller/password_controller.dart';
import '../Widget/textFormField.dart';
import '../function/validInPut.dart';

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PasswordControllerImp controller = Get.put(PasswordControllerImp());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: controller.formstate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "أدخل رقم هاتفك لنرسل لك الرمز",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              CustomTextFormField(
                valid: (val) {
                  return validInPut(val!, 9, 15, "phone");
                },
                hinttext: 'أدخل رقم الهاتف',
                labletext: 'رقم الهاتف',
                iconData: Icons.phone,
                ObscureText: false,
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
                    controller.verifycode();
                  },
                  child: Text("إرسال"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
