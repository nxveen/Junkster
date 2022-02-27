import 'package:flutter/material.dart';
import 'package:junkster/recycpro.dart';
import 'package:junkster/categ.dart';
void main() => runApp(MaterialApp(
  home: Choice(),
));

class Choice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 251, 231, 1),
      body: Column(children: [
        SizedBox(width: w * .055),
        Container(
          height: h * .38,
          width: w * .78,
          margin: EdgeInsets.fromLTRB(h * 0.1, h * 0.1, h * 0.1, h * 0.05),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(h * 0.024)),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(150, 235, 168, 1),
                  Color.fromRGBO(150, 235, 168, 1)
                ]),
          ),
          child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context) => Categ()),);
                },
                child: Column(children: [
                  SizedBox(height: h * .1),
                  SizedBox(height: h * .02),
                  Text('''TO BE
              RECYCLED''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: h * .05,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Niramit',
                        height: h * .0012,
                      )),
                ]),
              )),
        ),
        SizedBox(width: w * .055),
        Container(
          height: h * .38,
          width: w * .78,
          margin: EdgeInsets.fromLTRB(h * 0.1, h * 0, h * 0.1, h * 0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(150, 235, 168, 1),
                Color.fromRGBO(150, 235, 168, 1),
              ],
            ),
          ),
          child: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context) => Recycpro()),);
                },
                child: Column(
                  children: [
                    SizedBox(height: h * .1),
                    SizedBox(height: h * .02),
                    Text('''RECYCLED 
            PRODUCTS''',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: h * .05,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Niramit',
                          height: h * .0012,
                        )),
                  ],
                )),
          ),
        ),
      ]),
    );
  }
}