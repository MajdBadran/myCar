import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/core/common/models/post_model.dart';
import 'package:mycar/setting.dart/problem.dart';
import '../model/postInfo_model.dart';
 import 'package:url_launcher/url_launcher.dart';

class DisplayPost extends StatelessWidget {
  final PostModel postModel;
  const DisplayPost({Key? key, required this.postModel}) : super(key: key);
  final double coverHeight = 220;

  @override
  Widget build(BuildContext context) {
    final post = PostPreferences.PostInfo;
     void sendWhatsApp() async {
       String url = "Whatsapp://send?${post.number}";
       await launchUrl(Uri.parse(url));
    }

    return Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                      color: Colors.grey,
                      child: Image(
                        width: double.infinity,
                        height: coverHeight,
                        fit: BoxFit.fill,
                        image: AssetImage(
                          post.image,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      height: 15,
                      thickness: 1,
                    ),
                    Text(
                      "السعر يتقلب...  يرجى الإتصال بالبائع",
                      style: TextStyle(color: Colors.red),
                    ),
                    Divider(
                      color: Colors.black,
                      height: 15,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_exchange,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "السعر:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "${postModel.car.price}",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    Divider(
                      height: 30,
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "الإسم:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(postModel.user.name),
                      ],
                    ),
                    Divider(
                      height: 30,
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "رقم الهاتف:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text("${postModel.user.phone}"),
                      ],
                    ),
                    Divider(
                      height: 30,
                      thickness: 2,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.mode_rounded,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "تاريخ الانتاج:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(postModel.dateOfPublish),
                      ],
                    ),
                    Divider(
                      height: 30,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "تبليغ عن هذا الإعلان",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(Problem());
                          },
                          child: Text(
                            "هل تواجه مشكلة",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 100,
                          shadowColor: Colors.green,
                          backgroundColor: Colors.white70,
                          padding: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35))),
                      onPressed: () {
                        sendWhatsApp();
                      },
                      icon: Icon(Icons.chat,color: Colors.black),
                      label: Text(
                        "محادثة على الواتساب",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
