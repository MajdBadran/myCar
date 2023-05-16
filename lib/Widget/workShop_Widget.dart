import 'package:flutter/material.dart';
import 'package:mycar/Widget/Image_Widget.dart';
import '../model/work_shop_model.dart';

class WorkShopWidget extends StatelessWidget {
  const WorkShopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final WorkInfo = WorkShopPreferences.workinfo;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 6),
      child: Container(
          height: 220,
          width: 165,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 4,
                  blurRadius: 5,
                  color: Colors.black12.withOpacity(0.2)),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageWidget(
                  imagePath: WorkInfo.image,
                ),
                Text(
                  WorkInfo.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Mirza'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "الرقم:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${WorkInfo.number}",
                      style: TextStyle(color: Colors.blueAccent),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "الموقع:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      WorkInfo.location,
                      style: TextStyle(color: Colors.blueAccent),
                    )
                  ],
                ),
                Text(
                  WorkInfo.desc,
                  style: TextStyle(color: Colors.blueAccent),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )),
    );
  }
}
