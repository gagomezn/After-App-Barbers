import 'package:flutter/material.dart';

import '../../../widget/navigation_drawer_widget.dart';
import 'Barber_Bokking_Detail.dart';


const stylistData = [
  {
    'stylistName': 'Cameron Jones',
    'salonName': 'Corte Clasico',
    'rating': 'S/48',
    'rateAmount': '56',
    'imgUrl': 'assets/images/stylist1.png',
    'bgColor': Color(0xffFFF0EB),
  },
  {
    'stylistName': 'Max Robertson',
    'salonName': 'Corte + barba',
    'rating': 'S/50',
    'rateAmount': '80',
    'imgUrl': 'assets/images/stylist2.png',
    'bgColor': Color(0xffEBF6FF),
  },
  {
    'stylistName': 'Beth Watson',
    'salonName': 'Peinado pack',
    'rating': 'S/100',
    'rateAmount': '70',
    'imgUrl': 'assets/images/stylist3.png',
    'bgColor': Color(0xffFFF3EB),
  }
];

class BarberBookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Reservas'),
        centerTitle: true,
        backgroundColor: Color(0xffAD8B19),
      ),
      backgroundColor: Color(0xffAD8B19),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      StylistCard(stylistData[0]),
                      StylistCard(stylistData[1]),
                      StylistCard(stylistData[2]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StylistCard extends StatelessWidget {
  final stylist;
  StylistCard(this.stylist);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: stylist['bgColor'],
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40, left: 30),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      stylist['stylistName'],
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      stylist['salonName'],
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Color(0xff4E295B),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          stylist['rating'],
                          style: TextStyle(
                            color: Color(0xff4E295B),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BaberBookingDetailScreen(stylist)));
                  },
                  color: Color(0xff4E295B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Ver detalles',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
