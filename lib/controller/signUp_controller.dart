import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/auth/login.dart';
import 'package:mycar/auth/remote_data_source.dart';

import '../home/homescreen.dart';

abstract class SignUpController extends GetxController {
  signup();

  goToLogIn();
}

class SignUoControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  RxBool signupLoading = RxBool(false);
  late TextEditingController name;
  late TextEditingController phone;
  late TextEditingController password;

  late TextEditingController email;

  void switchLoading() {
    signupLoading.value = !signupLoading.value;
  }

  @override
  signup() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      switchLoading();
      try {
        await RemoteDataSource().register(
          email: email.text,
          name: name.text,
          password: password.text,
          phone: phone.text,
        );
        Get.to(()=>LogIn());
      } catch (e) {
        Get.snackbar(
          'Faild',
          'Some thing wrong',
          colorText: Colors.black,
          backgroundColor: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
          maxWidth: Get.width,
        );
      }

      switchLoading();
    } else {
      print("Not Valid");
    }
  }

  @override
  goToLogIn() {
    Get.to(LogIn());
  }

  @override
  void onInit() {
    name = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    phone.dispose();
    password.dispose();
    email.dispose();
    super.dispose();
  }
}
