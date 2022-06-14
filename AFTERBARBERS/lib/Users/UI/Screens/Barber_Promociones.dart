

import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import '../../../data/user.dart';
import '../../../widget/navigation_drawer_widget.dart';
import 'FirstView_Barber.dart';

class BarberPromocionesScreen extends StatefulWidget {
  @override
  State createState() {
    return _BarberPromocionesScreen();
  }
}
class _BarberPromocionesScreen extends State<BarberPromocionesScreen> {
  @override
  static final padding = EdgeInsets.symmetric(horizontal: 20);
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Promociones'),
      centerTitle: true,
      backgroundColor: Color(0xffAD8B19),
    ),
    body: SingleChildScrollView(
      child: Column(
        children:  [
        SizedBox(
          height: 14,
        ),

        CouponCard(
          height: 150,
          backgroundColor: Color(0xffAD8B19),
          curveAxis: Axis.vertical,
          firstChild: Container(
            decoration: const BoxDecoration(
              color: Color(0xffAD8B19),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '23%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'OFF',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(color: Colors.white54, height: 0),
                const Expanded(
                  child: Center(
                    child: Text(
                      'WINTER IS\nHERE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          secondChild: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Coupon Code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'FREESALES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  'Valid Till - 30 Jan 2022',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        ),

          SizedBox(height: 14),
      CouponCard(
        height: 300,
        curvePosition: 180,
        curveRadius: 30,
        borderRadius: 10,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffAD8B19),
              Color(0xffAD8B19),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        firstChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'CHIRISTMAS SALES',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '16%',
              style: TextStyle(
                color: Colors.white,
                fontSize: 56,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'OFF',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        secondChild: Container(
          width: double.maxFinite,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.white),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 42),
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.symmetric(horizontal: 80),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.white,
              ),
            ),
            onPressed: () {},
            child: const Text(
              'REDEEM',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xffAD8B19),
              ),
            ),
          ),
        ),
      ),
          SizedBox(height: 14),
        CouponCard(
          height: 200,
          backgroundColor: Color(0xffAD8B19),
          clockwise: true,
          curvePosition: 135,
          curveRadius: 30,
          curveAxis: Axis.vertical,
          borderRadius: 10,
          firstChild: Container(
            decoration: const BoxDecoration(
              color: Color(0xffAD8B19),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '23%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'OFF',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(color: Colors.white54, height: 0),
                const Expanded(
                  child: Center(
                    child: Text(
                      'WINTER IS\nHERE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          secondChild: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Coupon Code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'FREESALES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  'Valid Till - 30 Jan 2022',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        ),
          SizedBox(height: 14),
        ],
      ),
    ),
  );
}
