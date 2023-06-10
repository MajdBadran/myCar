import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mycar/setting.dart/settings.dart';
// import '../Widget/imageProfile_Widget.dart';
import '../model/userprofile_model.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final editimage = UserPreferences.myUser;
  final ImagePicker picker = ImagePicker();
  late File imageFile = editimage.image as File;
  _showOption(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text("الاستديو"),
                      onTap: () => _imageFromGellary(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.camera_alt_outlined),
                      title: Text("الكاميرة"),
                      onTap: () => _imageFromCamera(context),
                    ),
                  ],
                ),
              ),
            ));
  }

  Future _imageFromGellary(BuildContext context) async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = image as File;
    });
  }

  Future _imageFromCamera(BuildContext context) async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      imageFile = image as File;
    });
  }

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
                Center(
                  child: InkWell(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 4,
                                color: Colors.white,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.2)),
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(editimage.image))),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(width: 4, color: Colors.white),
                                  color: Colors.black45),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    ),
                    onTap: () => _showOption(context),
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
        ),
      ]));
}
