// import 'package:flutter/material.dart';
// import 'package:mycar/Widget/ProfileWidget.dart';
// import 'package:mycar/model/postInfo_Model.dart';
// import 'package:mycar/model/userprofile_model.dart';
//
// class ScreenTest extends StatelessWidget {
//   const ScreenTest({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final post = PostPreferences.PostInfo;
//     final user = UserPreferences.myUser;
//
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Hello World"),
//         ),
//         body: ListView(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 7),
//               child: InkWell(
//                 onTap: () {},
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                           spreadRadius: 2,
//                           blurRadius: 10,
//                           color: Colors.black.withOpacity(0.2)),
//                     ],
//                   ),
//                   height: 180,
//                   child: Padding(
//                       padding: const EdgeInsets.all(7),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Stack(children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   children: [
//                                     CircleAvatar(
//                                         child: ProfileWidget(
//                                             imagePath: user.image)),
//                                     SizedBox(
//                                       width: 8,
//                                     ),
//                                     Text(
//                                       post.name,
//                                       style: TextStyle(
//                                           fontSize: 17,
//                                           fontWeight: FontWeight.bold,
//                                           fontFamily: "Mirza"),
//                                     ),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text("الرقم: ",
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                         )),
//                                     Text("${post.number}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text("الموقع: ",
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                         )),
//                                     Text("${post.location}"),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Text("الوصف: ",
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                         )),
//                                     Text("${post.description}"),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ]),
//                           Container(
//                               alignment: Alignment.topRight,
//                               height: 170,
//                               width: 84,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5),
//                                   border: Border.all(
//                                       width: 1, color: Colors.blueGrey),
//                                   shape: BoxShape.rectangle,
//                                   boxShadow: [
//                                     BoxShadow(
//                                         spreadRadius: 1,
//                                         blurRadius: 2,
//                                         color: Colors.black.withOpacity(0.1))
//                                   ]),
//                               child: Image(
//                                 image: AssetImage(post.image),
//                               )),
//                         ],
//                       )),
//                 ),
//               ),
//             ),
//           ],
//         ));
//   }
// }
