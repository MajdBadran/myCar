import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mycar/auth/verifycode.dart';

abstract class PasswordController extends GetxController {
  verifycode();
}

class PasswordControllerImp extends PasswordController {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  late TextEditingController phone;

  @override
  verifycode() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.to(VerifyCode());
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phone.dispose();
    super.dispose();
  }
}
