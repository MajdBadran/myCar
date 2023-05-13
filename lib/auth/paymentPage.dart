import 'package:flutter/material.dart';
import 'package:mycar/function/alertexit.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WillPopScope(onWillPop: AlertExitApp,child: SingleChildScrollView(
        child: Center(
          child: Text("صفحة الدفع"),
        ),
      ),)
    );
  }
}
