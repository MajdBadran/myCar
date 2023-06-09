import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/home/displayPost.dart';
import '../model/postInfo_model.dart';
import '../model/userprofile_model.dart';
import 'imageProfile_Widget.dart';

class InfoPost extends StatelessWidget {
  const InfoPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final post = PostPreferences.PostInfo;
    final user = UserPreferences.myUser;
    return InkWell(
      onTap: () {
        Get.to(DisplayPost());
      },
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
        height: 190,
        child: Padding(
            padding:
                const EdgeInsets.only(top: 5, left: 9, right: 9, bottom: 4),
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
                          radius: 15,
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
                        Text("السعر: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          "${post.price}",
                          style: TextStyle(color: Colors.red),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("الرقم: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          "${post.number}",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("اسم السيارة: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          post.nameCar,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("الموقع: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          post.location,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("الوصف: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          post.description,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.topRight,
                    height: 176,
                    width: 89,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(color: Colors.blueGrey),
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 7,
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
