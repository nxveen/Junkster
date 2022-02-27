import 'package:flutter/material.dart';
import 'package:junkster/paper.dart';
import 'package:junkster/plastic.dart';
import 'package:junkster/glass.dart';
import 'package:junkster/ewaste.dart';
class Categ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
          children: [
            SizedBox(height: h * 0.06),
            Center(
              child: Container(
                child:Text(
                  'CATEGORIES',
                  style: TextStyle(
                    fontSize: h*0.06,
                    fontWeight: FontWeight.bold,
                    letterSpacing: h*(0.1/40.0),
                    color: Colors.black,
                    fontFamily: 'Gotu',
                  )
                )
              )
            ),
            SizedBox(height: h * .06),
            Row(
              children: [
                SizedBox(width: w * .055),
                Container(
                  height: h * .325, width: w * .41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(h * 0.024)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color.fromRGBO(174, 244, 190, 1),Color.fromRGBO(174, 244, 190, 1)]
                    ),
                  ),
                  child: Center(
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Paper()),);
                        },
                        child:
                        Column(
                          children: [
                            SizedBox(height: h*.02),
                            Image.asset(
                              'assets/paper.jpg',
                              height: h*0.18,
                            ),
                            SizedBox(height: h*.02),

                            Text(
                                'PAPER',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: h * .032,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: 'Gotu',
                                )

                            ),
                          ],
                        )
                    ),
                  ),
                ),
                SizedBox(width: w * .065),
                Container(
                  height: h * .325, width: w * .41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(h * 0.024)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color.fromRGBO(224, 251, 231, 1),Color.fromRGBO(224, 251, 231, 1)],
                    ),
                  ),
                  child: Center(
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Plastic()),);
                        },
                        child:
                        Column(
                          children: [
                            SizedBox(height: h * 0.02),
                            Image.asset(
                                'assets/plastic.jpg',
                              height: h*0.18,
                            ),

                            SizedBox(height: h*.02),
                            Text(
                                'PLASTIC',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: h * .032,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: 'Gotu',
                                )

                            ),
                          ],
                        )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: h * .036),
            Row(
              children: [
                SizedBox(width: w * .055),
                Container(
                  height: h * .325, width: w * .41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color.fromRGBO(224, 251, 231, 1),Color.fromRGBO(224, 251, 231, 1)],
                    ),
                  ),
                  child: Center(
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Glass()),);
                        },
                        child:
                        Column(
                          children: [
                            SizedBox(height: h * .02),
                            Image.asset(
                              'assets/glass.jpg',
                              height: h*0.18,
                            ),

                            SizedBox(height: h*.02),
                            Text(
                                'GLASS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: h * .032,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: 'Gotu',
                                )

                            ),
                          ],
                        )
                    ),
                  ),
                ),
                SizedBox(width: w * .065),
                Container(
                  height: h * .325, width: w * .41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(h * 0.024)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color.fromRGBO(174, 244, 190, 1),Color.fromRGBO(174, 244, 190, 1)],
                    ),
                  ),
                  child: Center(
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Ewaste()),);
                        },
                        child:
                        Column(
                          children: [
                            SizedBox(height: h * 0.012),
                            Image.asset(
                              'assets/ewaste.jpg',
                              height: h*0.18,
                            ),
                            SizedBox(height: h*.02),

                            Text(
                                'E-WASTE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: h * .032,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: 'Gotu',
                                )

                            ),
                          ],
                        )
                    ),
                  ),
                ),
              ],
            ),


          ]
      ),
    );
  }
}

