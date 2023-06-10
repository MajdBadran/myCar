import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mycar/function/validInPut.dart';
import 'package:mycar/home/homescreen.dart';
import '../Widget/buttonAuth_Widget.dart';
import '../Widget/imageProfile_Widget.dart';
import '../model/userprofile_model.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final double coverHeight = 220;
  final ImagePicker picker = ImagePicker();
  File? imageFile;
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
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      File? img = File(image.path);
      setState(() {
        imageFile = img;
        Navigator.of(context).pop();
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }

  Future _imageFromCamera(BuildContext source) async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      File? img = File(image.path);
      setState(() {
        imageFile = img;
        Navigator.of(context).pop();
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
        appBar: AppBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showOption(context),
          child: Icon(Icons.add_a_photo_outlined),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 13),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: ProfileWidget(imagePath: user.image),
                        radius: 19,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        user.name,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Mirza"),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    width: 350,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 4,
                            blurRadius: 5,
                            color: Colors.black12.withOpacity(0.1)),
                      ],
                    ),
                    child: imageFile == null
                        ? Center(child: const Text("لا يوجد صورة"))
                        : Image(image: FileImage(imageFile!)),
                  ),
                  TextFormField(
                    validator: (val) {
                      return validInPut(val!, 1, 1000000, "price");
                    },
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        label: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            child: Text(
                              "السعر",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (val) {
                      return validInPut(val!, 7, 14, "price");
                    },
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        label: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            child: Text(
                              "رقم الهاتف",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (val) {
                      return validInPut(val!, 3, 50, "nameCar");
                    },
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        label: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            child: Text(
                              "اسم السيارة",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (val) {
                      return validInPut(val!, 1, 1000000, "price");
                    },
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        label: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            child: Text(
                              "الموقع",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    maxLines: 2,
                    maxLength: 200,
                    validator: (val) {
                      return validInPut(val!, 1, 1000000, "price");
                    },
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        label: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            child: Text(
                              "الوصف",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  ButtomAuth(
                    text: 'نشر الإعلان',
                    onPressed: () {
                      Get.to(HomeScreen());
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
