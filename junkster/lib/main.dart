import 'package:flutter/material.dart';
import 'package:junkster/loginScreen.dart';
void main() {

  runApp(Junkster(
  ));
}

class Junkster extends StatelessWidget{
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Home()
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
          children: [
            Container(
            height: h*0.4,
            width: w*1,
            color: Color.fromRGBO(145,224,162,1),
               child: Center(
                 child: Column(
                   children:[
                     SizedBox(height: h*0.12),
                     SizedBox(height: h*0.2, width: w*0.36,
                       child: FlatButton(onPressed: () {
                         Navigator.push(
                             context,
                             MaterialPageRoute(builder:(context) => LoginScreen()),);
                       },

                           child: Image.asset('assets/image.jpg')),
                     )
                   ]
                 ),
               ),
            ),
            Container(
              height: h*0.3,
              width: w*1,
              child: Column(
                children: [
                  SizedBox(
                    height: h*0.15
                  ),
                  Center(
                    child: Text(
                      'JUNKSTER',
                      style: TextStyle(
                        fontSize: h*0.07,
                        fontWeight: FontWeight.w300,
                        letterSpacing: h*(0.1/30),
                        color: Colors.black,
                        fontFamily: 'MarcellusSC',
                      )
                    ),
                  ),
                ],
              ),
            ),
           Container(
             height: h*0.2,
             width: w*1,
             child: Column(
               children: [

                 Row(
                   children: [
                     Text(
                         '                      Be part of the ',
                         style: TextStyle(
                           fontSize: h*(0.1/5.0),
                           fontWeight: FontWeight.w100,
                           letterSpacing: h*(0.1/60.0),
                           color: Colors.black,
                           fontFamily: 'Lato',

                         )
                     ),
                     Text(
                       'solution',
                       style: TextStyle(
                         fontSize: h*(0.1/5.0),
                         fontWeight: FontWeight.bold,
                         letterSpacing: h*(0.1/60.0),
                         color: Colors.green,
                         fontFamily: 'Lato',
                     )
                     )
                   ],
                 ),
                 Row(
                   children: [
                     Text(
                         '                          Not the ',
                         style: TextStyle(
                           fontSize: h*(0.1/5.0),
                           fontWeight: FontWeight.w100,
                           letterSpacing: h*(0.1/60.0),
                           color: Colors.black,
                           fontFamily: 'Lato',

                         )
                     ),
                     Text(
                         'pollution',
                         style: TextStyle(
                           fontSize: h*(0.1/5.0),
                           fontWeight: FontWeight.bold,
                           letterSpacing: h*(0.1/60.0),
                           color: Colors.green,
                           fontFamily: 'Lato',
                         )
                     )
                   ],
                 ),
               ],
             ),

           )
          ],
        ),

    );
    }
}