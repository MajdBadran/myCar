import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/home/editProfile.dart';
import '../Widget/imageProfile_Widget.dart';
import '../Widget/userInfo_Widget.dart';
import '../model/userprofile_model.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "صفحتي",
            style: TextStyle(fontFamily: "Mirza", fontSize: 30, height: 8),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(EditProfile());
              },
              icon: Icon(Icons.edit),
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: ProfileWidget(
                imagePath: user.image,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            buildInfo(user),
            // Center(child: UpgardeButton()),
          ],
        ));
  }
}
