import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mycar/auth/remote_data_source.dart';
import 'package:mycar/auth/signup.dart';
import 'package:mycar/home/homescreen.dart';

abstract class LogInController extends GetxController {
  login();

  goToSignUp();

  showPassword();
}

class LogInControllerImp extends LogInController {
  RxBool loading = RxBool(false);

  void switchLoading()=>loading.value = !loading.value;
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  late TextEditingController name;
  late TextEditingController password;

  bool isShowPassword = true;

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
     try{
       final response = await RemoteDataSource().login(name.text, password.text);
       Get.to(()=>HomeScreen());
       return response;
     }catch(e){
       Get.snackbar(
         'Faild',
         'Some thing wrong',
         colorText: Colors.black,
         backgroundColor: Colors.white,
         snackPosition: SnackPosition.BOTTOM,
         maxWidth: Get.width,
       );
     }


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
