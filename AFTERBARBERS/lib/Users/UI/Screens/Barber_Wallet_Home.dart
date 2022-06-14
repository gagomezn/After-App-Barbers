import 'package:flutter/material.dart';

class BarberWalletHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(243, 245, 248, 1),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 24,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Transacciones recientes", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24, color: Colors.black),),

                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 32),
              ),
              SizedBox(height: 24,),

              //Container for buttons
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text("All", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.grey[900]),),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),

                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    SizedBox(width: 16,),
                    Container(
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.green,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("Ingresos", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.grey[900]),),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),

                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),

                    SizedBox(width: 16,),
                  ],
                ),
              ),

              SizedBox(height: 16,),
              //Container Listview for expenses and incomes
              Container(
                child: Text("HOY", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey[500]),),
                padding: EdgeInsets.symmetric(horizontal: 32),
              ),

              SizedBox(height: 16,),

              ListView.builder(
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.all(Radius.circular(18))
                          ),
                          child: Icon(Icons.date_range, color: Colors.lightBlue[900],),
                          padding: EdgeInsets.all(12),
                        ),

                        SizedBox(width: 16,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("PAGO", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey[900]),),
                              Text("Pack Corte + barba", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey[500]),),
                            ],
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text("+\$500.5", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.lightGreen),),
                            Text("26 Jan", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey[500]),),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                shrinkWrap: true,
                itemCount: 2,
                padding: EdgeInsets.all(0),
                controller: ScrollController(keepScrollOffset: false),
              ),

              //now expense
              SizedBox(height: 16,),

              Container(
                child: Text("AYER", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey[500]),),
                padding: EdgeInsets.symmetric(horizontal: 32),
              ),

              SizedBox(height: 16,),

              ListView.builder(
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.all(Radius.circular(18))
                          ),
                          child: Icon(Icons.directions_car, color: Colors.lightBlue[900],),
                          padding: EdgeInsets.all(12),
                        ),

                        SizedBox(width: 16,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Pago", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey[900]),),
                              Text("Pago por corte clasico", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey[500]),),
                            ],
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text("-\$500.5", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.orange),),
                            Text("26 Jan", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey[500]),),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                shrinkWrap: true,
                itemCount: 2,
                padding: EdgeInsets.all(0),
                controller: ScrollController(keepScrollOffset: false),
              ),

              //now expense


            ],
          ),

        ),
      )
    );
  }
}