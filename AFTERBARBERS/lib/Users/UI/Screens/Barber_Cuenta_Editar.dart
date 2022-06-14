

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import '../../../data/user.dart';
import '../../../widget/imagecardview.dart';
import '../../../widget/navigation_drawer_widget.dart';
import 'FirstView_Barber.dart';

class BarberCuentaEditarScreen extends StatefulWidget {
  @override
  State createState() {
    return _BarberCuentaEditarScreen();
  }
}
class _BarberCuentaEditarScreen extends State<BarberCuentaEditarScreen> {
  @override
  static final padding = EdgeInsets.symmetric(horizontal: 20);
  final starfull = Container(
      margin: EdgeInsets.only(
          left : 3.0
      ),
      child: Icon(
          Icons.star,
          color: Color(0xffAD8B19)
      )
  );
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Editar'),
      centerTitle: true,
      backgroundColor: Color(0xffAD8B19),
    ),
    body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
                height: 130,
                width: 130,
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://dam.esquirelat.com/wp-content/uploads/2020/07/francisco-770x513.jpg")
                    ),
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color(0xffAD8B19),
                          blurRadius: 15.0,
                          offset: Offset(0.0, 0.7))]
                )
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              child: Text(
                "Gabriel Ruiz",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato",
                  fontSize: 22
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(19),
              child: Row(
                children: <Widget>[
                  starfull,
                  starfull,
                  starfull,
                  starfull,
                  starfull
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(19),
                  child: Text(
                    "Estudios: " + "Bucle",style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 18
                  ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(19),
                    child:Text(
                      "Trabajo: " + "Marco Aldani",style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 18
                    ),
                    )
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(19),
                    child:Flexible(
                      child: Container(
                        child: Text(
                          "Direccion: " + "Av.Primavera",style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 18
                        ),
                        ),
                      ),
                    )
                ),
              ],
            ),
            Row(
              children: <Widget>[
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.all(8.0),
                    decoration:
                    BoxDecoration(border: Border.all(width: 0.25)),
                  ),
                ),
                Text(
                  "Descripcion",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.all(8.0),
                    decoration:
                    BoxDecoration(border: Border.all(width: 0.25)),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 18.0
                  )),
            ),
            Row(
              children: <Widget>[
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.all(8.0),
                    decoration:
                    BoxDecoration(border: Border.all(width: 0.25)),
                  ),
                ),
                Text(
                  "Algunos cortes",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.all(8.0),
                    decoration:
                    BoxDecoration(border: Border.all(width: 0.20)),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(26),
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ImageCardView("https://dam.esquirelat.com/wp-content/uploads/2020/07/francisco-770x513.jpg"),
                  ImageCardView("https://cdn.shopify.com/s/files/1/0743/6659/files/Cabello_10.jpg?v=1638227819"),
                  ImageCardView("https://cdn.shopify.com/s/files/1/0743/6659/files/BPT9-SoyMacho-Barbero-Peluquero-Estilista-2.png?v=1539290275")
                ],
              ),
            ),
            SizedBox(height: 16,),
            Row(
              children: <Widget>[
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.all(8.0),
                    decoration:
                    BoxDecoration(border: Border.all(width: 0.25)),
                  ),
                ),
                Text(
                  "Comentarios",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.all(8.0),
                    decoration:
                    BoxDecoration(border: Border.all(width: 0.25)),
                  ),
                ),
              ],
            ),
            //ReviewList(barberuid: superHero1.barberuid,),
            SizedBox(height: 16,),
            //Row(
            //  children: <Widget>[
            //    new Expanded(
            //      child: new Container(
            //        margin: EdgeInsets.all(8.0),
            //        decoration:
            //        BoxDecoration(border: Border.all(width: 0.25)),
            //      ),
            //    ),
            //    Text(
            //      "Tipos de corte",
            //      style: TextStyle(
            //        color: Colors.grey,
            //        fontWeight: FontWeight.bold,
            //      ),
            //    ),
            //    new Expanded(
            //      child: new Container(
            //        margin: EdgeInsets.all(8.0),
            //        decoration:
            //        BoxDecoration(border: Border.all(width: 0.25)),
            //      ),
            //    ),
            //  ],
            //),
            //MyStatefulWidget("Corte Clasico","descripcion"),
            //MyStatefulWidget("Corte Basico","descripcion"),
            //MyStatefulWidget("Especial Barbers","descripcion"),

            SizedBox(
              height: 30,
            ),

          ],
        )),
  );
}
