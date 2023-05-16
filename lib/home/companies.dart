import 'package:flutter/material.dart';
import 'package:mycar/Widget/company_Widget.dart';

class Companies extends StatelessWidget {
  const Companies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "الشركات",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    CompanyWidget(),
                    CompanyWidget(),
                  ],
                ),
                Row(
                  children: [
                    CompanyWidget(),
                    CompanyWidget(),
                  ],
                ),
                Row(
                  children: [
                    CompanyWidget(),
                    CompanyWidget(),
                  ],
                ),
                Row(
                  children: [
                    CompanyWidget(),
                    CompanyWidget(),
                  ],
                ),
                Row(
                  children: [
                    CompanyWidget(),
                    CompanyWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
