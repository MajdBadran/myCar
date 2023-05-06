import 'package:flutter/material.dart';
import '../Widget/ButtonWidget.dart';
import '../Widget/ProfileWidget.dart';
import '../model/userPreferences.dart';
import '../model/userprofile.dart';

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
              height: 12,
            ),
            // Center(child: UpgardeButton()),
          ],
        ));
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "${user.number}",
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  // Widget UpgardeButton() => ButtonWidget(
  //       text: "تحديث الحساب",
  //       onClicked: () {},
  //     );
}
