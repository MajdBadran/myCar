import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/auth/password.dart';
import 'package:mycar/home/homescreen.dart';
import 'signup.dart';
// import 'package:mycar/auth/password.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LoginState();
}

class _LoginState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "تسجيل الدخول",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
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
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: TextFormField(
                  // validator: (pass){
                  //   if (pass!.length > 8)
                  //   {
                  //     return "يجب ان تكون كلمة المرور اكثر من 8 محارف";
                  //   }
                  // },
                  textInputAction: TextInputAction.go,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: EdgeInsets.symmetric(horizontal: 25),
                      prefixIcon: Icon(Icons.lock),
                      hintText: "أدخل كلمة السر",
                      helperStyle: TextStyle(fontSize: 5),
                      label: Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          child: Text(
                            "كلمة السر",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                // margin: EdgeInsets.only(top: 5),
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
                        Get.to(SignUp());
                      },
                      child: Text(
                        "إنشاء حساب",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Get.offAll(HomeScreen());
                  },
                  child: Text("تسجيل دخول"),
                ),
              ),
            ],
          ),
        ));
  }
}

// Container(
//         padding: EdgeInsets.symmetric(horizontal: 15),
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//                 padding: EdgeInsets.all(5),
//                 child: Image.asset("images/Logo.png",width: 250,height: 80,)),
//
//             Text("مرحبا بك",style: TextStyle(fontSize: 30),),
//             TextFormField(
//               textAlign: TextAlign.end,
//               textInputAction: TextInputAction.next,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   floatingLabelBehavior: FloatingLabelBehavior.always,
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 3, horizontal: 25),
//                   suffixIcon: Icon(Icons.account_circle),
//                   hintText: "أدخل الإسم",
//                   helperStyle: TextStyle(fontSize: 5),
//                   label: Container(
//                       margin: EdgeInsets.symmetric(horizontal: 9),
//                       child: Text(
//                         "الإسم",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20))),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             TextFormField(
//               // validator: (pass){
//               //   if (pass!.length > 8)
//               //   {
//               //     return "يجب ان تكون كلمة المرور اكثر من 8 محارف";
//               //   }
//               // },
//               textAlign: TextAlign.end,
//               textInputAction: TextInputAction.go,
//               obscureText: true,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                   floatingLabelBehavior: FloatingLabelBehavior.always,
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 3, horizontal: 25),
//                   suffixIcon: Icon(Icons.lock),
//                   hintText: "أدخل كلمة السر",
//                   helperStyle: TextStyle(fontSize: 5),
//                   label: Container(
//                       margin: EdgeInsets.symmetric(horizontal: 9),
//                       child: Text(
//                         "كلمة السر",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20))),
//             ),
//             SizedBox(
//               height: 1,
//             ),
//             Container(
//               margin: EdgeInsets.all(8),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Get.to(Password());
//                     },
//                     child: Text(
//                       "نسيت كلمة السر؟",
//                       style: TextStyle(color: Colors.blue),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Get.to(SignUp());
//                     },
//                     child: Text(
//                       "إنشاء حساب",
//                       style: TextStyle(color: Colors.blue),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   textStyle: TextStyle(fontSize: 20),
//                 ),
//                 onPressed: () {
//                   Get.offAll(HomeScreen());
//                 },
//                 child: Text("تسجيل دخول"),
//               ),
//             ),
//             SizedBox(
//               height: 5,
//             ),
//           ],
//         ),
//       ),
