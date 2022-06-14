// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

// import 'Barbers/UI/Screens/login_barber.dart';
// import 'Barbers/UI/Screens/register_barber.dart';
// import 'Barbers/UI/Screens/start_barber.dart';
import 'Users/UI/Screens/Barber_Login.dart';
import 'Users/UI/Screens/Barber_Register.dart';
import 'Users/UI/Screens/Barber_Start_Page.dart';

// Routes
// const String HomePageRoute = "/";
const String WalkthroughRoute = "/";
const String StartUserRoute = "/";
const String LoginUserRoute = "LoginUser";
const String LoginBarberRoute = "LoginBarber";
const String RegisterUserRoute = "RegisterUser";
const String RegisterBarberRoute = "RegisterBarber";
const String SearchinmapRoute = "SearchMap";
const String HomePageUserRoute = "HomePageUser";
const String ForgotPasswordRoute = "ForgotPassword";
const String BarberStartPageRoute = "BarberStartPage";
const String BarberLoginPageRoute = "BarberLoginPage";
const String BarberRegisterPageRoute = "BarberRegisterPage";
// Router
// ignore: missing_return
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case BarberStartPageRoute :
      return PageTransition(child: StartBarber(), type: PageTransitionType.rightToLeft);
    case BarberLoginPageRoute :
      return PageTransition(child: BarberSignInScreen(), type: PageTransitionType.rightToLeft);
    case BarberRegisterPageRoute :
      return PageTransition(child: RegisterBarber(), type: PageTransitionType.rightToLeft);

  }
}
