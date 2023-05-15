import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/auth/password.dart';
import 'package:mycar/controller/logIn_controller.dart';
import '../Widget/buttonAuth.dart';
import '../Widget/textFormField.dart';
import '../function/validInPut.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LoginState();
}

class _LoginState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    LogInControllerImp cotroller = Get.put(LogInControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تسجيل الدخول",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Form(
            key: cotroller.formstate,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Image.asset(
                    'images/Logo.png',
                    height: 150,
                  ),
                   CustomTextFormField(
                        hinttext: 'أدخل الإسم',
                        labletext: 'الإسم',
                        iconData: Icons.account_circle,
                        textInputType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        mycontroller: cotroller.name,
                        valid: (val) {
                          return validInPut(val!, 2, 50, "name");
                        },
                      ),
                   GetBuilder<LogInControllerImp>(
                        builder: (cotroller) => CustomTextFormField(
                          valid: (val) {
                            return validInPut(val!, 8, 50, "password");
                          },
                          obscureText: cotroller.isShowPassword,
                          onTapIcon: () {
                            cotroller.showPassword();
                          },
                          hinttext: 'أدخل كلمة المرور',
                          labletext: 'كلمة المرور',
                          iconData: Icons.lock,
                          mycontroller: cotroller.password,
                          textInputType: TextInputType.number,
                          textInputAction: TextInputAction.go,
                        ),
                      ),
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
        ),
      ),
    );
  }
}
