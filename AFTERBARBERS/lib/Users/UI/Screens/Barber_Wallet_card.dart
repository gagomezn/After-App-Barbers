
import 'package:flutter/material.dart';

class BarberWalletCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text("Tus Tarjetas", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24, color: Colors.black),),
                      Text("1 Tarjeta registrada", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14, color: Colors.grey),),
                    ],
                  ),

                  IconButton(
                    icon: Icon(Icons.more_horiz, color: Colors.lightBlue[900], size: 30,), onPressed: () {  },
                  )
                ],
              ),
            ),
            //Container for card
            SizedBox(
              height: 16,
            ),

            Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(35, 60, 103, 1),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Color.fromRGBO(50, 172, 121, 1),
                          child: Icon(Icons.check, color: Colors.white, size: 24,),
                        ),

                        Text("VISA", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28, color: Colors.white, fontWeight: FontWeight.w900),)
                      ],
                    ),
                    SizedBox(height: 32,),

                    Text("**** **** **** 5647", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 2.0),),

                    SizedBox(height: 32,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("CARD HOLDER", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                            Text("Maaz Aftab", style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("EXPIRES", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                            Text("8/22", style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("CVV", style: TextStyle(fontSize: 12, color: Colors.blue[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                            Text("845", style: TextStyle(fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.w700, letterSpacing: 2.0),),
                          ],
                        )
                      ],
                    )

                  ],
                )
            ),



            SizedBox(
              height: 50,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [BoxShadow(
                      color: Color(0xffAD8B19),
                      spreadRadius: 10.0,
                      blurRadius: 4.5
                  )]
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.wifi_tethering,
                        color: Colors.lightBlue[900],
                      ),
                      SizedBox(
                        width: 16,
                      ),

                      Text("Tarjeta activa", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.grey[700]),)

                    ],
                  ),
                  Switch(
                    value: true,
                    activeColor: Color.fromRGBO(50, 172, 121, 1),
                    onChanged: (_){},
                  )

                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),



          ],
        ),
      ),
    );
  }
}
