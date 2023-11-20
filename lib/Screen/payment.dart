
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  _CheckOut createState() => _CheckOut();
}

class _CheckOut extends State<CheckOut> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: "Phone number"),
            //  keyboardType: TextInputType.phone,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {

                },
                child: Text('payment')),
          ],
        ),
      ),
    );
  }

  
}