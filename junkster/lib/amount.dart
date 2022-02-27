import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  final int qty;
  final int price;

  Amount({Key? key,required this.qty,required this.price}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int y=qty*price;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
          children: [
            Image.asset('assets/amount.jpg',
              height: h * 0.7, width: w * 1, fit: BoxFit.fitWidth,
            ),
            SizedBox(height: h * 0.04),

            Container(

            child: Padding(
            padding: const EdgeInsets.fromLTRB(80.0, 8.0, 80.0, 8.0),

            child: Container(
            color: Color.fromRGBO(174, 244, 190, 1),
            child: TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4.0))),
            labelText: 'Rs. $y',


            ),
            ),
            ),
            ),
            ),
            Row(
                children: [
                  SizedBox(width: w * 0.7),
                  Text('Next'),
                  FlatButton(onPressed: null,
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
