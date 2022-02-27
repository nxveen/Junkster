import 'package:flutter/material.dart';
import 'package:junkster/amount.dart';
class Plastic extends StatelessWidget {
  TextEditingController c=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery
        .of(context)
        .size
        .width;
    double h = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        body: Column(
          children: [
            Image.asset('assets/buyplastic.jpg',
              height: h * 0.7, width: w * 1, fit: BoxFit.fitWidth,
            ),
            SizedBox(height: h * 0.08),
            Container(

              child: Padding(
                padding: const EdgeInsets.fromLTRB(80.0, 8.0, 80.0, 8.0),

                child: Container(
                  color: Color.fromRGBO(174, 244, 190, 1),
                  child: TextField(
                    controller: c,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0))),
                      labelText: 'Enter Weight (kg)',
                      hintText: 'Enter Weight(kg)',

                    ),
                  ),
                ),
              ),
            ),
            Row(
                children: [
                  SizedBox(width: w * 0.7),
                  Text('Next'),
                  FlatButton(onPressed: () {
                    int x=int.parse(c.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context) => Amount(qty: x,price: 35)),);
                  },
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ),
                  )
                ]
            )
          ],
        )
    );
  }
}