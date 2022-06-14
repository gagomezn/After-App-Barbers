
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/navigation_item.dart';
import 'Barber_Cuenta.dart';

import 'Barber_Wallet.dart';
import 'Barber_Bokking.dart';
import 'header_page.dart';
import 'Barber_chat.dart';
import 'notifications_page.dart';
import 'people_page.dart';
import 'plugins_page.dart';
import 'updates_page.dart';
import 'Barber_Promociones.dart';
import '../../../provider/navigation_provider.dart';




class FirstViewBarber extends StatefulWidget {
  @override
  _FirstViewBarberState createState() => _FirstViewBarberState();
}

class _FirstViewBarberState extends State<FirstViewBarber> {
  @override
  Widget build(BuildContext context) => buildPages();

  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.header:
        return HeaderPage();
      case NavigationItem.people:
        return HomeScreen();
      case NavigationItem.favourites:
        return BarberBookingScreen();
      case NavigationItem.workflow:
        return BarberPromocionesScreen();
      case NavigationItem.updates:
        return UpdatesPage();
      case NavigationItem.wallet:
        return BarberWalletScreen();
      case NavigationItem.cuenta:
        return BarberCuentaScreen();
      case NavigationItem.plugins:
        return PluginsPage();
      case NavigationItem.notifications:
        return NotificationsPage();
    }
  }
}