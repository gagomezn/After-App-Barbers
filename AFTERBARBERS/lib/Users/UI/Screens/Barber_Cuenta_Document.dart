

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import '../../../data/user.dart';
import '../../../widget/navigation_drawer_widget.dart';
import 'FirstView_Barber.dart';

class BarberCuentaDocumentScreen extends StatefulWidget {
  @override
  State createState() {
    return _BarberCuentaDocumentScreen();
  }
}
class _BarberCuentaDocumentScreen extends State<BarberCuentaDocumentScreen> {
  @override
  static final padding = EdgeInsets.symmetric(horizontal: 20);
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Documentos'),
      centerTitle: true,
      backgroundColor: Color(0xffAD8B19),
    ),
    body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            padding: padding.add(EdgeInsets.symmetric(vertical: 20)),
            child: Text(
              "Documentos Barbero",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: FirstViewBarber(),
                      type: PageTransitionType.rightToLeft));

            },
            child: Container(
              height: 75,
              width: MediaQuery.of(context).size.width,
              decoration:  BoxDecoration(
                  border: Border.all(
                      color: const Color(0xffAD8B19),
                      width: 1.0
                  ),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(15.0))
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      SizedBox(width: MediaQuery.of(context).size.width*0.1),
                      Icon(Icons.watch_later_outlined),
                      SizedBox(width: MediaQuery.of(context).size.width*0.1),
                      Text("Pendiente", style:TextStyle(color: Colors.red),),

                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      SizedBox(width: MediaQuery.of(context).size.width*0.1),
                      Icon(Icons.description_sharp),
                      SizedBox(width: MediaQuery.of(context).size.width*0.1),
                      Text("Documentos"),

                    ],
                  ),
                ],
              )
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: FirstViewBarber(),
                      type: PageTransitionType.rightToLeft));

            },
            child: Container(
                height: 75,
                width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffAD8B19),
                        width: 1.0
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15.0))
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Icon(Icons.watch_later_outlined),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Text("Cumplido", style:TextStyle(color: Colors.green),),

                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Icon(Icons.description_sharp),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Text("Documentos"),

                      ],
                    ),
                  ],
                )
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: FirstViewBarber(),
                      type: PageTransitionType.rightToLeft));

            },
            child: Container(
                height: 75,
                width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffAD8B19),
                        width: 1.0
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15.0))
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Icon(Icons.watch_later_outlined),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Text("Pendiente", style:TextStyle(color: Colors.red),),

                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Icon(Icons.description_sharp),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Text("Documentos"),

                      ],
                    ),
                  ],
                )
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: FirstViewBarber(),
                      type: PageTransitionType.rightToLeft));

            },
            child: Container(
                height: 75,
                width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffAD8B19),
                        width: 1.0
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15.0))
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Icon(Icons.watch_later_outlined),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Text("Cumplido", style:TextStyle(color: Colors.green),),

                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Icon(Icons.description_sharp),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Text("Documentos"),

                      ],
                    ),
                  ],
                )
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: FirstViewBarber(),
                      type: PageTransitionType.rightToLeft));

            },
            child: Container(
                height: 75,
                width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffAD8B19),
                        width: 1.0
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15.0))
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Icon(Icons.watch_later_outlined),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Text("Pendiente", style:TextStyle(color: Colors.red),),

                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Icon(Icons.description_sharp),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Text("Documentos"),

                      ],
                    ),
                  ],
                )
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: FirstViewBarber(),
                      type: PageTransitionType.rightToLeft));

            },
            child: Container(
                height: 75,
                width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffAD8B19),
                        width: 1.0
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15.0))
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Icon(Icons.watch_later_outlined),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Text("Cumplido", style:TextStyle(color: Colors.green),),

                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Icon(Icons.description_sharp),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1),
                        Text("Documentos"),

                      ],
                    ),
                  ],
                )
            ),
          ),
          SizedBox(height: 10),

        ],
      ),
    ),
  );
}
