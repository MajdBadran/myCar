import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/auth/password.dart';
import 'package:mycar/controller/logIn_controller.dart';
import '../Widget/buttonAuth.dart';
import '../Widget/textFormField.dart';
import '../function/validInPut.dart';
// import 'signup.dart';
// import 'package:get_storage/get_storage.dart';
// import '../function/validInPut.dart';
// import 'package:mycar/auth/password.dart';
// import 'package:mycar/home/homescreen.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LoginState();
}

class _LoginState extends State<LogIn> {
  // GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  // send() {
  //   var formdata = formstate.currentState;
  //   if (formdata!.validate()) {
  //     print("valid");
  //   } else {
  //     print("Not Valid");
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    LogInControllerImp cotroller = Get.put(LogInControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "تسجيل الدخول",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            child: Form(
              key: cotroller.formstate,
              child: Column(
                children: [
                  Image.asset(
                    'images/Logo.png',
                    height: 150,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CustomTextFormField(
                        hinttext: 'أدخل الإسم',
                        labletext: 'الإسم',
                        iconData: Icons.account_circle,
                        ObscureText: false,
                        textInputType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        mycontroller: cotroller.name,
                        valid: (val) {
                          return validInPut(val!, 2, 50, "name");
                        },
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CustomTextFormField(
                        valid: (val) {
                          return validInPut(val!, 8, 50, "password");
                        },
                        hinttext: 'أدخل كلمة المرور',
                        labletext: 'كلمة المرور',
                        iconData: Icons.lock,
                        ObscureText: true,
                        mycontroller: cotroller.password,
                        textInputType: TextInputType.number,
                        textInputAction: TextInputAction.go,
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(Password());
                          },
                          child: Text(
                            "نسيت كلمة السر؟",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            cotroller.goToSignUp();
                          },
                          child: Text(
                            "إنشاء حساب",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ButtomAuth(
                    text: 'تسجيل دخول',
                    onPressed: () {
                      cotroller.login();
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
