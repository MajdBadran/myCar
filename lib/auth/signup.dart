import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/function/validInPut.dart';
import '../Widget/buttonAuth_Widget.dart';
import '../Widget/textFormField_Widget.dart';
import '../controller/signUp_controller.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    SignUoControllerImp controller = Get.put(SignUoControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "إنشاء حساب",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Form(
            key: controller.formstate,
            child: Column(
              children: [
                Image.asset(
                  'images/Logo.png',
                  height: 150,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomTextFormField(
                      valid: (val) {
                        return validInPut(val!, 2, 50, "name");
                      },
                      hinttext: 'أدخل الإسم',
                      labletext: 'الإسم',
                      iconData: Icons.account_circle,
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      mycontroller: controller.name,
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomTextFormField(
                      valid: (val) {
                        return validInPut(val!, 2, 50, "name");
                      },
                      hinttext: 'ادخل بريدك الالكتروني',
                      labletext: 'البريد الالكتروني',
                      iconData: Icons.account_circle,
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      mycontroller: controller.email,
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomTextFormField(
                      valid: (val) {
                        return validInPut(val!, 9, 15, "phone");
                      },
                      hinttext: 'أدخل رقم الهاتف',
                      labletext: 'رقم الهاتف',
                      iconData: Icons.phone,
                      textInputType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      mycontroller: controller.phone,
                    )), //رقم الهاتف
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomTextFormField(
                      valid: (val) {
                        return validInPut(val!, 8, 50, "password");
                      },
                      hinttext: 'أدخل كلمة المرور',
                      labletext: 'كلمة المرور',
                      iconData: Icons.lock,
                      obscureText: true,
                      textInputType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      mycontroller: controller.password,
                    )), //كلمة المرور
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomTextFormField(
                      valid: (val) {
                        return validInPut(val!, 8, 50, "password");
                      },
                      hinttext: 'تأكيد كلمة المرور',
                      labletext: 'كلمة المرور',
                      iconData: Icons.lock,
                      obscureText: true,
                      textInputType: TextInputType.number,
                      textInputAction: TextInputAction.go,
                      mycontroller: controller.password,
                    )), //تاكيد كلمة المرور
                Column(
                  children: [
                    Obx(() => controller.signupLoading.value
                        ? CircularProgressIndicator()
                        : ButtomAuth(
                            text: 'تسجيل',
                            onPressed: () {
                              controller.signup();
                            },
                          )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("هل لديك حساب بالفعل؟"),
                        InkWell(
                          onTap: () async {
                            await controller.signup();
                          },
                          child: Text(
                            "تسجيل دخول",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
