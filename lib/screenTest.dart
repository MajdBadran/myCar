// import 'package:flutter/material.dart';
// import 'package:mycar/Widget/Image_Widget.dart';
// // import 'package:mycar/Widget/imageProfile_Widget.dart';
// // import 'package:mycar/model/postInfo_model.dart';
// // import 'package:mycar/model/userprofile_model.dart';
//
// import 'model/work_shop_model.dart';
//
// class ScreenTest extends StatelessWidget {
//   const ScreenTest({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final WorkInfo = WorkShopPreferences.workinfo;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello World"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 11),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                     height: 220,
//                     width: 170,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                       boxShadow: [
//                         BoxShadow(
//                             spreadRadius: 3,
//                             blurRadius: 3,
//                             color: Colors.blueAccent.withOpacity(0.1)),
//                       ],
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           ImageWidget(
//                             imagePath: WorkInfo.image,
//                           ),
//                           Text(
//                             WorkInfo.name,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                                 fontFamily: 'Mirza'),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "الرقم:",
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 "${WorkInfo.number}",
//                                 style: TextStyle(color: Colors.blueAccent),
//                               )
//                             ],
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "الموقع:",
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 WorkInfo.location,
//                                 style: TextStyle(color: Colors.blueAccent),
//                               )
//                             ],
//                           ),
//                               Text(
//
//                                 WorkInfo.desc,
//                                 style: TextStyle(color: Colors.blueAccent),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//
//
//                         ],
//                       ),
//                     )),
//                 Container(
//                     height: 220,
//                     width: 170,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                       boxShadow: [
//                         BoxShadow(
//                             spreadRadius: 3,
//                             blurRadius: 3,
//                             color: Colors.blueAccent.withOpacity(0.1)),
//                       ],
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           WorkShopWidget(
//                             imagePath: WorkInfo.image,
//                           ),
//                           Text(
//                             WorkInfo.name,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                                 fontFamily: 'Mirza'),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "الرقم:",
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 "${WorkInfo.number}",
//                                 style: TextStyle(color: Colors.blueAccent),
//                               )
//                             ],
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "الموقع:",
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 WorkInfo.location,
//                                 style: TextStyle(color: Colors.blueAccent),
//                               )
//                             ],
//                           ),
//                           Text(
//
//                             WorkInfo.desc,
//                             style: TextStyle(color: Colors.blueAccent),
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//
//
//                         ],
//                       ),
//                     )),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
