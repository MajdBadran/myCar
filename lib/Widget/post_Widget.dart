import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/core/common/models/post_model.dart';
import 'package:mycar/home/displayPost.dart';
import '../model/postInfo_model.dart';
import '../model/userprofile_model.dart';
import 'imageProfile_Widget.dart';

class InfoPost extends StatelessWidget {
  final PostModel post;
  const InfoPost({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Get.to(DisplayPost(
          postModel: post,
        ));
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
                        // CircleAvatar(
                        //   child: ProfileWidget(imagePath: post.user.image),
                        //   radius: 15,
                        // ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "${post.user.name}",
                          style: TextStyle(
                              color: Colors.black,
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
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          "${post.car.price}",
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
                              color: Colors.black,
                            )),
                        Text(
                          "${post.car.brandId}",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("اسم السيارة: ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          "${ post.car.brandType.name}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle( color: Colors.black,),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("الصنف: ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                         "${post.car.typeOfShop.name}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle( color: Colors.black,),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("المحرك: ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          " ${post.car.fuelType.type} ",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle( color: Colors.black,),
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
                      image: AssetImage("images/car.jpeg"),
                    )),
              ],
            )),
      ),
    );
  }
}
