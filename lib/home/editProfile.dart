import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/setting.dart/settings.dart';
import '../Widget/ProfileWidget.dart';
import '../model/userprofile_model.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final editimage = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("تعديل المعلومات"),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(Settings());
                },
                icon: Icon(Icons.settings))
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 5, right: 5, top: 5),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ProfileWidget(
                    imagePath: editimage.image,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                buildTextField("اسم المستخدم", "Abode Tahan"),
                buildTextField("رقم الهاتف", "0969614321"),
                buildTextField("نوع الحساب", "مثال: مكتب"),
                buildTextField("الموقع", "مثال: دمشق, الحميدية"),
                buildTextField("نبذة", "الوصف"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "الغاء",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.black),
                      ),
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("حفظ",
                          style: TextStyle(fontSize: 15, letterSpacing: 2)),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget buildTextField(String lableText, String placehholder) => Padding(
      padding: EdgeInsets.only(
        bottom: 15,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            contentPadding: EdgeInsets.only(bottom: 15),
            labelText: lableText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placehholder,
            hintStyle: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        )
      ]));
}
