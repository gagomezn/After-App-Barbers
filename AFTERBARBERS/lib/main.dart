// @dart=2.9
import 'package:afterbarberapp/provider/navigation_provider.dart';
import 'package:afterbarberapp/provider/walkthrough_provider.dart';
import 'package:flutter/material.dart';
import 'router.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:provider/provider.dart';

import 'dart:async';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(Application());
  });
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  // StreamSubscription iosSubscription;
  // final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  // @override
  // void initState() {
  //   super.initState();
  // _fcm.configure(
  //   onMessage: (Map<String, dynamic> message) async {
  //     print("onMessage en app: $message");
  //
  //     showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         content: ListTile(
  //           title: Text(message['notification']['title']),
  //           subtitle: Text(message['notification']['body']),
  //         ),
  //         actions: <Widget>[
  //           FlatButton(
  //             color: Colors.amber,
  //             child: Text('Ok'),
  //             onPressed: () => Navigator.of(context).pop(),
  //           ),
  //         ],
  //       ),
  //     );
  //   },
  //
  //   onLaunch: (Map<String, dynamic> message) async {
  //     print("onLaunch: $message");
  //     // TODO optional
  //   },
  //   onResume: (Map<String, dynamic> message) async {
  //     print("onResume: $message");
  //     // TODO optional
  //   },
  // );
  // }

  // @override
  // void dispose() {
  //   if (iosSubscription != null) iosSubscription.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplash(
          imagePath: 'assets/images/Logoprincipal.png',
          home: ChangeNotifierProvider(
            create: (context) => NavigationProvider(),
            child:  const MaterialApp(
              debugShowCheckedModeBanner: false,
              onGenerateRoute: onGenerateRoute,
              initialRoute: BarberStartPageRoute,
            ),),
          duration: 1500,
          type: AnimatedSplashType.StaticDuration,
        )
    );















    /*return BlocProvider<UserBloc>(
        bloc: UserBloc(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: AnimatedSplash(
              imagePath: 'assets/images/Logoprincipal.png',
              home: ChangeNotifierProvider(
                create: (BuildContext context) => WalkthroughProvider(),
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  onGenerateRoute: onGenerateRoute,
                  theme: ThemeScheme.light(),
                  initialRoute: StartUserRoute,
                ),),
              duration: 1500,
              type: AnimatedSplashType.StaticDuration,
            )
        ));*/
  }
}
