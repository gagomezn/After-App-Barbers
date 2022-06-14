import 'package:flutter/material.dart';


import '../../../widget/navigation_drawer_widget.dart';
import 'Barber_Wallet_Home.dart';
import 'Barber_Wallet_card.dart';

class BarberWalletScreen extends StatefulWidget {
  @override
  _BarberWalletScreen createState() => _BarberWalletScreen();
}

class _BarberWalletScreen extends State<BarberWalletScreen> {
  var screens = [
    BarberWalletHomeScreen(),
    BarberWalletCardScreen(),
  ]; //screens for each tab

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Wallet'),
        centerTitle: true,
        backgroundColor: Color(0xffAD8B19),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
              color: Color(0xffAD8B19),),
              label: "home"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card,
                  color: Color(0xffAD8B19)),
              label: "Card"
          ),
        ],
        onTap: (index){
          setState(() {
            selectedTab = index;

          });
        },
        showUnselectedLabels: true,
        iconSize: 30,
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Color(0xffAD8B19),
        backgroundColor: Color(0xffAD8B19),
        onPressed: (){},
        elevation: 0,
        child: Icon(Icons.add,
            color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selectedTab],
    );
  }
}
