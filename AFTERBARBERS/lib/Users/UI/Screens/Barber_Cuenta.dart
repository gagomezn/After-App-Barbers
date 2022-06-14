

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import '../../../data/user.dart';
import '../../../widget/navigation_drawer_widget.dart';
import 'Barber_Cuenta_Document.dart';
import 'Barber_Cuenta_Editar.dart';
import 'FirstView_Barber.dart';

class BarberCuentaScreen extends StatefulWidget {
  @override
  State createState() {
    return _BarberCuentaScreen();
  }
}
class _BarberCuentaScreen extends State<BarberCuentaScreen> {
  @override
  static final padding = EdgeInsets.symmetric(horizontal: 20);
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Cuenta'),
      centerTitle: true,
      backgroundColor: Color(0xffAD8B19),
    ),
    body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 50, backgroundImage: NetworkImage(urlImage)),
                SizedBox(width: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      email,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: BarberCuentaDocumentScreen(),
                      type: PageTransitionType.rightToLeft));

            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width*0.9,
              decoration:  BoxDecoration(
                  border: Border.all(
                      color: const Color(0xffAD8B19),
                      width: 1.0
                  ),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(15.0))
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  SizedBox(width: MediaQuery.of(context).size.width*0.1),
                  Icon(Icons.description_sharp),
                  SizedBox(width: MediaQuery.of(context).size.width*0.1),
                  Text("Documentos"),

                ],
              ),
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
                height: 50,
                width: MediaQuery.of(context).size.width*0.9,
                decoration:  BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffAD8B19),
                        width: 1.0
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    SizedBox(width: MediaQuery.of(context).size.width*0.1),
                    Icon(Icons.credit_card),
                    SizedBox(width: MediaQuery.of(context).size.width*0.1),
                    Text("Pago"),

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
                height: 50,
                width: MediaQuery.of(context).size.width*0.9,
                decoration:  BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffAD8B19),
                        width: 1.0
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    SizedBox(width: MediaQuery.of(context).size.width*0.1),
                    Icon(Icons.info),
                    SizedBox(width: MediaQuery.of(context).size.width*0.1),
                    Text("Informacion Fiscal"),

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
                      child: BarberCuentaEditarScreen(),
                      type: PageTransitionType.rightToLeft));

            },
            child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.9,
                decoration:  BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffAD8B19),
                        width: 1.0
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    SizedBox(width: MediaQuery.of(context).size.width*0.1),
                    Icon(Icons.edit),
                    SizedBox(width: MediaQuery.of(context).size.width*0.1),
                    Text("Editar cuenta"),


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
                height: 50,
                width: MediaQuery.of(context).size.width*0.9,
                decoration:  BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffAD8B19),
                        width: 1.0
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    SizedBox(width: MediaQuery.of(context).size.width*0.1),
                    Icon(Icons.lock),
                    SizedBox(width: MediaQuery.of(context).size.width*0.1),
                    Text("Seguridad y privacidad"),

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
                height: 50,
                width: MediaQuery.of(context).size.width*0.9,
                decoration:  BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffAD8B19),
                        width: 1.0
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    SizedBox(width: MediaQuery.of(context).size.width*0.1),
                    Icon(Icons.error),
                    SizedBox(width: MediaQuery.of(context).size.width*0.1),
                    Text("Enviar informe de error"),

                  ],
                )
            ),
          ),

        ],
      ),
    ),
  );
}
