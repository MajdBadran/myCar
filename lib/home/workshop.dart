import 'package:flutter/material.dart';
import 'package:mycar/Widget/workShop_Widget.dart';

class WorkShop extends StatelessWidget {
  const WorkShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "ورشات الصيانة",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WorkShopWidget(),
                    WorkShopWidget(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WorkShopWidget(),
                    WorkShopWidget(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WorkShopWidget(),
                    WorkShopWidget(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WorkShopWidget(),
                    WorkShopWidget(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WorkShopWidget(),
                    WorkShopWidget(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WorkShopWidget(),
                    WorkShopWidget(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WorkShopWidget(),
                    WorkShopWidget(),
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}
