import 'package:flutter/material.dart';
import 'package:mycar/Widget/workshopWidget.dart';

import '../model/work_shop_model.dart';

class WorkShop extends StatelessWidget {
  const WorkShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = WorkShopPreferences.workinfo;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "ورشات الصيانة",
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1)),
                  ],
                ),
                height: 210,
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.2))
                            ]),
                        child: WorkShopWidget(imagePath: info.image),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        info.name,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Mirza"),
                      ),
                      Divider(
                        height: 10,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("الرقم: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text("${info.number}"),
                            ],
                          ),
                          Row(
                            children: [
                              Text("الموقع: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text("${info.location}"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
