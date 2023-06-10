import 'package:flutter/material.dart';
import 'package:mycar/Widget/Image_Widget.dart';
import '../model/company_model.dart';

class CompanyWidget extends StatelessWidget {
  const CompanyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final companyInfo = CompanyPreferences.companyInfo;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
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
                  imagePath: companyInfo.image,
                ),
                Text(
                  companyInfo.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Mirza'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "الرقم:",
                      style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "${companyInfo.number}",
                      style: TextStyle(color: Colors.blueAccent),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "الموقع:",
                      style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      companyInfo.location,
                      style: TextStyle(color: Colors.blueAccent),
                    )
                  ],
                ),
                Text(
                  companyInfo.desc,
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
