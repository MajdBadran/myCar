import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 100, bottom: 2),
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              "أدخل بريدك الإلكتروني لنرسل لك الرمز",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          SizedBox(height: 10,),
          Form(
              child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 3, horizontal: 25),
                    prefixIcon: Icon(Icons.lock),
                    hintText: "أدخل بريدك الإلكتروني",
                    helperStyle: TextStyle(fontSize: 5),
                    label: Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        child: Text(
                          "كلمة السر",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ],
          )),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Row(
              children: [
                Text("لم تتلقى الرمز؟ "),
                InkWell(
                  onTap: () {},
                  child: Text(
                    " إرسال مرة اخرى",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("homepage");
              },
              child: Text("إرسال"),
            ),
          ),
        ],
      ),
    );
  }
}
