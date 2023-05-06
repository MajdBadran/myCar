import 'package:flutter/material.dart';
import 'package:mycar/auth/login.dart';
import 'package:mycar/home/homescreen.dart';
import 'package:get/get.dart';
// import 'dart:io';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  send() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "إنشاء حساب",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/Logo.png',
                  height: 150,
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        prefixIcon: Icon(Icons.account_circle),
                        hintText: "أدخل الإسم",
                        helperStyle: TextStyle(fontSize: 3),
                        label: Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            child: Text(
                              "الإسم",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: EdgeInsets.symmetric(horizontal: 25),
                        prefixIcon: Icon(Icons.lock),
                        hintText: "أدخل البريد الإلكتروني",
                        helperStyle: TextStyle(fontSize: 5),
                        label: Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            child: Text(
                              "البريد",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    textInputAction: TextInputAction.go,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        prefixIcon: Icon(Icons.account_circle),
                        hintText: "أدخل كلمة المرور",
                        helperStyle: TextStyle(fontSize: 3),
                        label: Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            child: Text(
                              "كلمة المرور",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Get.offAll(HomeScreen());
                    },
                    child: Text("تسجيل"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" هل لديك حساب؟ "),
                    InkWell(
                      onTap: () {
                        Get.off(LogIn());
                      },
                      child: Text(
                        "تسجيل دخول",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

//// validator: (pass){
//                     //   if (pass!.length > 8)
//                     //   {
//                     //     return "يجب ان تكون كلمة المرور اكثر من 8 محارف";
//                     //   }
//                     // },

// validator: (pass){
//   if (pass!.length > 8)
//   {
//     return "يجب ان تكون كلمة المرور اكثر من 8 محارف";
//   }
// },
