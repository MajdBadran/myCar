import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycar/function/alertexit.dart';
import 'package:mycar/home/companies.dart';
import 'package:mycar/home/workshop.dart';
import '../Widget/post_Widget.dart';
import '../auth/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "سيارتي",
            style: TextStyle(fontSize: 30, fontFamily: "Mirza"),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.filter_alt),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(LogIn());
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: WillPopScope(
          onWillPop: AlertExitApp,
          child: Container(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 1,
                          ),
                          prefixIcon: Icon(Icons.search),
                          hintText: "اسم السيارة",
                          hintStyle: TextStyle(color: Colors.black38),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.to(WorkShop());
                        },
                        child: Text("ورشات الصيانة"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(Companies());
                        },
                        child: Text("الشركات"),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  height: 5,
                ),
                InfoPost(),
                InfoPost(),
                InfoPost(),
                InfoPost(),
                InfoPost(),
                InfoPost(),
              ],
            ),
          ),
        ));
  }
}

/////  Post Information Widget ////////////

// final post = PostPreferences.PostInfo;
// final user = UserPreferences.myUser;

// InkWell(
// child: Container(
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(10),
// boxShadow: [
// BoxShadow(
// spreadRadius: 1,
// blurRadius: 8,
// color: Colors.black.withOpacity(0.1)),
// ],
// ),
// height: 160,
// child: Padding(
// padding: const EdgeInsets.all(7),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Row(
// children: [
// CircleAvatar(
// child: ProfileWidget(
// imagePath: user.image),
// radius: 13,
// ),
// SizedBox(
// width: 8,
// ),
// Text(
// post.name,
// style: TextStyle(
// fontSize: 17,
// fontWeight: FontWeight.bold,
// fontFamily: "Mirza"),
// ),
// ],
// ),
// Row(
// children: [
// Text("الرقم: ",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// )),
// Text("${post.number}"),
// ],
// ),
// Row(
// children: [
// Text("الموقع: ",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// )),
// Text("${post.location}"),
// ],
// ),
// Row(
// children: [
// Text("الوصف: ",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// )),
// Text("${post.description}"),
// ],
// ),
// ],
// ),
//
// Container(
// alignment: Alignment.topRight,
// height: 150,
// width: 74,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(3),
// border: Border.all(color: Colors.blueGrey),
// shape: BoxShape.rectangle,
// boxShadow: [
// BoxShadow(
// spreadRadius: 2,
// blurRadius: 15,
// color: Colors.black.withOpacity(0.1))
// ]),
// child: Image(
// image: AssetImage(post.image),
// )),
// ],
// )),
// ),
// ),
