import 'package:flutter/material.dart';
import '../model/work_shop_model.dart';

Widget buildInfo(WorkShop workshopinfo) => Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Center(
            child: Text(
              workshopinfo.name,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Text("رقم الهاتف"),
              Text(workshopinfo.number as String),
            ],
          ),
          Row(
            children: [
              Text("مكان الورشة"),
              Text(workshopinfo.location),
            ],
          ),
          Text(workshopinfo.desc),
        ],
      ),
    );
