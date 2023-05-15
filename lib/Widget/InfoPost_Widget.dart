import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/home/displayPost.dart';
import '../model/postInfo_Model.dart';
import '../model/userprofile_model.dart';
import 'ProfileWidget.dart';

class InfoPost extends StatelessWidget {
  const InfoPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final post = PostPreferences.PostInfo;
    final user = UserPreferences.myUser;
    return InkWell(
      onTap: (){Get.to(DisplayPost());},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 8,
                color: Colors.blueGrey.withOpacity(0.2)),
          ],
        ),
        height: 160,
        child: Padding(
            padding:
                const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: ProfileWidget(imagePath: user.image),
                          radius: 13,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          post.name,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Mirza"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("الرقم: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text("${post.number}"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("الموقع: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text("${post.location}"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("الوصف: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text("${post.description}"),
                      ],
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.topRight,
                    height: 150,
                    width: 76,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: Colors.blueGrey),
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 15,
                              color: Colors.black.withOpacity(0.1))
                        ]),
                    child: Image(
                      image: AssetImage(post.image),
                    )),
              ],
            )),
      ),
    );
  }
}
