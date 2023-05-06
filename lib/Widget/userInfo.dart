import 'package:flutter/material.dart';
import '../model/userprofile.dart';


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

Widget buildInfo(User user) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Icon(Icons.account_circle,color: Colors.blueAccent,),
          SizedBox(
            width: 10,
          ),
          Text(
            "نوع الحساب:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            user.type,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
      Divider(
        height: 30,
        thickness: 2,
      ),
      Row(
        children: [
          Icon(Icons.location_on,color: Colors.blueAccent,),
          SizedBox(
            width: 10,
          ),
          Text(
            "الموقع:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            width: 7,
          ),

          Text(
            user.location,
            style: TextStyle(fontSize: 18),
          ),

        ],
      ),
      Divider(
        height: 30,
        thickness: 2,
      ),
      Row(
        children: [
          Icon(Icons.info,color: Colors.blueAccent,),
          SizedBox(
            width: 10,
          ),
          Text(
            "نبذة:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            width: 7,
          ),

          Text(
            user.about,
            style: TextStyle(fontSize: 18),
          ),

        ],
      ),

    ],
  ),
);