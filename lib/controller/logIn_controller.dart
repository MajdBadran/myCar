import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mycar/auth/signup.dart';
import 'package:mycar/home/homescreen.dart';

abstract class LogInController extends GetxController {
  login();
  goToSignUp();
  showPassword();
}

class LogInControllerImp extends LogInController {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  late TextEditingController name;
  late TextEditingController password;

  bool isShowPassword = true;
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.to(HomeScreen());
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignUp() {
    Get.to(SignUp());
  }

  @override
  void onInit() {
    name = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    password.dispose();
    super.dispose();
  }
}
