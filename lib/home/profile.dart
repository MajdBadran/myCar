import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/home/editProfile.dart';
// import '../Widget/ButtonWidget.dart';
import '../Widget/ProfileWidget.dart';
import '../Widget/userInfo.dart';
import '../model/userPreferences.dart';
// import '../model/userprofile.dart';

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
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: ProfileWidget(
                imagePath: user.image,
                onClicked: () async {},
              ),
            ),
            SizedBox(
              height: 12,
            ),
            buildName(user),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 20,
              thickness: 2,
            ),
            buildInfo(user),
            // Center(child: UpgardeButton()),
          ],
        ));
  }



  // Widget UpgardeButton() => ButtonWidget(
  //       text: "تحديث الحساب",
  //       onClicked: () {},
  //     );
}
