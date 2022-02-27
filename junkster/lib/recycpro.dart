import 'package:flutter/material.dart';
import 'package:junkster/amount.dart';
class Recycpro extends StatelessWidget
{
  TextEditingController c=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body:  SingleChildScrollView(
            child:Column(
                children: [
                  Container(
                    height: h*0.2,
                    width: w*1,
                    color: Color.fromRGBO(174,244,190,1),
                    child: Center(
                      child: Text(
                        'RECYCLED PRODUCTS',
                        style: TextStyle(
                          fontSize: h*0.03,
                          fontWeight: FontWeight.bold,
                          letterSpacing: h*(0.1/30.0),
                          color: Colors.black,
                          fontFamily: 'KohSantepheap',
                        ) ,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h*.06,

                  ),
                  Row(children: [
                    SizedBox(
                      width:w*0.09,

                    ),
                    Text(
                      'Paper Cups' ,
                      style: TextStyle(
                        fontSize: h*0.025,
                        fontWeight: FontWeight.w500,

                        color: Colors.black,
                        fontFamily: 'KottaOne',
                      ) ,

                    ),
                    SizedBox(
                      width: w*.12,
                    ),
                    Text(
                      'Recycled Books' ,
                      style: TextStyle(
                        fontSize: h*0.025,
                        fontWeight: FontWeight.w500,

                        color: Colors.black,
                        fontFamily: 'KottaOne',
                      ),) ,

                  ],
                  ),
                  Row(
                      children:[

                        SizedBox(

                          width: w*0.09,),
                        FlatButton(onPressed: () {
                          int x=int.parse(c.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Amount(qty: x,price: 2)),);
                        },
                          child: Image.asset(
                              'assets/papercup.jpg',height: h*0.2,width: w*0.28,fit: BoxFit.fitHeight),
                        ),
                        SizedBox(
                          width: w*0.06,),
                        FlatButton(onPressed: () {
                          int x=int.parse(c.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Amount(qty: x,price: 20)),);
                        },
                          child: Image.asset(
                              'assets/book.jpg',height: h*0.2,width: w*0.34,fit: BoxFit.fitHeight),
                        ),
                      ]


                  ),

                  Text(
                      '       Rs.2/-              Rs20/-' ,
                      style: TextStyle(
                        fontSize: h*0.021,
                        fontWeight: FontWeight.w400,

                        color: Colors.black,
                        fontFamily: 'KottaOne',

                      )

                  ) ,
                  Row(
                    children: [
                      SizedBox(width: w*0.2),
                      Container( width: w*0.2,
                        child: TextField(
                          controller: c,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4.0))),
                            labelText: 'Enter Qty',


                          ),
                        )
                      ),
                      SizedBox(width: w*0.2),
                      Container( width: w*0.2,
                          child: TextField(
                            controller: c,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
                              labelText: 'Enter Qty',


                            ),
                          )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h*.06,

                  ),
                  Row(children: [
                    SizedBox(
                      width:w*0.09,

                    ),
                    Text(
                      'Paper Bags' ,
                      style: TextStyle(
                        fontSize: h*0.025,
                        fontWeight: FontWeight.w500,

                        color: Colors.black,
                        fontFamily: 'KottaOne',
                      ) ,

                    ),
                    SizedBox(
                      width: w*.19,
                    ),
                    Text(
                      'Trash Bags' ,
                      style: TextStyle(
                        fontSize: h*0.025,
                        fontWeight: FontWeight.w500,

                        color: Colors.black,
                        fontFamily: 'KottaOne',
                      ),) ,

                  ],
                  ),
                  Row(
                      children:[

                        SizedBox(

                          width: w*0.09,),
                        FlatButton(onPressed: () {
                          int x=int.parse(c.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Amount(qty: x,price: 3)),);
                        },
                          child: Image.asset(
                              'assets/bag.jpg',height: h*0.2,width: w*0.28,fit: BoxFit.fitHeight),
                        ),
                        SizedBox(
                          width: w*0.06,),
                        FlatButton(onPressed: () {
                          int x=int.parse(c.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Amount(qty: x,price: 100)),);
                        },
                          child: Image.asset(
                              'assets/bag2.jpg',height: h*0.2,width: w*0.34,fit: BoxFit.fitHeight),
                        ),

                      ]

                  ),

                  Text(
                      '       Rs.3/-              Rs.20/-' ,
                      style: TextStyle(
                        fontSize: h*0.021,
                        fontWeight: FontWeight.w400,

                        color: Colors.black,
                        fontFamily: 'KottaOne',

                      )

                  ) ,
                  Row(
                    children: [
                      SizedBox(width: w*0.2),
                      Container( width: w*0.2,
                          child: TextField(
                            controller: c,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
                              labelText: 'Enter Qty',


                            ),
                          )
                      ),
                      SizedBox(width: w*0.2),
                      Container( width: w*0.2,
                          child: TextField(
                            controller: c,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
                              labelText: 'Enter Qty',


                            ),
                          )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h*.06,

                  ),
                  Row(children: [
                    SizedBox(
                      width:w*0.09,

                    ),
                    Text(
                      'Plastic Cups' ,
                      style: TextStyle(
                        fontSize: h*0.025,
                        fontWeight: FontWeight.w500,

                        color: Colors.black,
                        fontFamily: 'KottaOne',
                      ) ,

                    ),
                    SizedBox(
                      width: w*.12,
                    ),
                    Text(
                      '     Bowls' ,
                      style: TextStyle(
                        fontSize: h*0.025,
                        fontWeight: FontWeight.w500,

                        color: Colors.black,
                        fontFamily: 'KottaOne',
                      ),) ,

                  ],
                  ),
                  Row(
                      children:[

                        SizedBox(

                          width: w*0.09,),
                        FlatButton(onPressed: () {
                          int x=int.parse(c.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Amount(qty: x,price: 50)),);
                        },
                          child: Image.asset(
                              'assets/plasticup.jpg',height: h*0.2,width: w*0.28,fit: BoxFit.fitHeight),
                        ),
                        SizedBox(
                          width: w*0.06,),
                        FlatButton(onPressed: () {
                          int x=int.parse(c.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Amount(qty: x,price: 5)),);
                        },
                          child: Image.asset(
                              'assets/bowl.jpg',height: h*0.2,width: w*0.34,fit: BoxFit.fitHeight),
                        ),
                      ]


                  ),

                  Text(
                      '      Rs.5/-            Rs.150/-' ,
                      style: TextStyle(
                        fontSize: h*0.021,
                        fontWeight: FontWeight.w400,

                        color: Colors.black,
                        fontFamily: 'KottaOne',

                      )

                  ) ,
                  Row(
                    children: [
                      SizedBox(width: w*0.2),
                      Container( width: w*0.2,
                          child: TextField(
                            controller: c,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
                              labelText: 'Enter Qty',


                            ),
                          )
                      ),
                      SizedBox(width: w*0.2),
                      Container( width: w*0.2,
                          child: TextField(
                            controller: c,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
                              labelText: 'Enter Qty',


                            ),
                          )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h*.06,

                  ),
                  Row(children: [
                    SizedBox(
                      width:w*0.09,

                    ),
                    Text(
                      'Containers' ,
                      style: TextStyle(
                        fontSize: h*0.025,
                        fontWeight: FontWeight.w500,

                        color: Colors.black,
                        fontFamily: 'KottaOne',
                      ) ,

                    ),
                    SizedBox(
                      width: w*.12,
                    ),
                    Text(
                      '       Paper Pens' ,
                      style: TextStyle(
                        fontSize: h*0.025,
                        fontWeight: FontWeight.w500,

                        color: Colors.black,
                        fontFamily: 'KottaOne',
                      ),) ,

                  ],
                  ),
                  Row(
                      children:[

                        SizedBox(

                          width: w*0.09,),
                        FlatButton(onPressed: () {
                          int x=int.parse(c.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Amount(qty: x,price: 50)),);
                        },
                          child: Image.asset(
                              'assets/container.jpg',height: h*0.2,width: w*0.28,fit: BoxFit.fitHeight),
                        ),
                        SizedBox(
                          width: w*0.06,),
                        FlatButton(onPressed: () {
                          int x=int.parse(c.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => Amount(qty: x,price: 10)),);
                        },
                          child: Image.asset(
                              'assets/pen.jpg',height: h*0.2,width: w*0.34,fit: BoxFit.fitHeight),
                        ),
                      ]


                  ),

                  Text(
                      '      Rs.199/-             Rs.10/-' ,
                      style: TextStyle(
                        fontSize: h*0.021,
                        fontWeight: FontWeight.w400,

                        color: Colors.black,
                        fontFamily: 'KottaOne',

                      )

                  ) ,
                  Row(
                    children: [
                      SizedBox(width: w*0.2),
                      Container( width: w*0.2,
                          child: TextField(
                            controller: c,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
                              labelText: 'Enter Qty',


                            ),
                          )
                      ),
                      SizedBox(width: w*0.2),
                      Container( width: w*0.2,
                          child: TextField(
                            controller: c,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
                              labelText: 'Enter Qty',


                            ),
                          )
                      ),
                    ],
                  ),

                ]
            )

        )
    );

  }
}