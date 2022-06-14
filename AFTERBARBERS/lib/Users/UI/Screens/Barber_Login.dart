// @dart=2.9

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:page_transition/page_transition.dart';
import '../../../router.dart';
import '../../../widget/MyPreferences.dart';
import 'FirstView_Barber.dart';

class BarberSignInScreen extends StatefulWidget {

  @override

  State createState() {
    return _BarberSignInScreen();
  }
}


class _BarberSignInScreen extends State<BarberSignInScreen> {

  MyPreferences _myPreferences = MyPreferences();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;
  String error ="";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LoginUser();
  }

  /*Widget _handleCurrentSession(){
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        //snapshot- data - Object User
        if(!snapshot.hasData || snapshot.hasError) {
          return LoginUser(snapshot);
        } else {
          User user = snapshot.data;
          _myPreferences.uid = user.uid;
          _myPreferences.commit();
          print("us.User UID login: " + _myPreferences.uid);
          return FirstView();
        }
      },
    );

  }*/
  Widget  LoginUser(){
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(BarberRegisterPageRoute);
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: const Text(
                "Regístrate",
                style: TextStyle(
                  color: Color(0xffAD8B19),
                  fontFamily: "BAHNSCHRIFT",
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Inicia Sesión",
                    style: _theme.textTheme.titleLarge.merge(
                      const TextStyle(
                        fontFamily: "the-foregen-rough-one",
                        fontSize: 30.0,
                        color: Colors.black,),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30.0,
                ),
                _loginForm(context),
                const SizedBox(
                  height: 30.0,
                ),

              ],
            ),
          ),
        )
      ),
    );
  }

  Widget _loginForm(BuildContext context) {


    final ThemeData _theme = Theme.of(context);
    return Container(

      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email'
              ),
              validator: (input)=> input.isEmpty ? 'Ingresa un Email' : null,
              onChanged: (val){
                setState(() => _email = val);
              },

            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Contraseña'
              ),
              obscureText: true,
              validator: (input)=> input.length < 6 ? 'Ingresa una contraseña mas larga' : null,
              onChanged: (val){
                setState(() => _password = val);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(ForgotPasswordRoute);
              },
              child: Container(
                child: Text(
                  "Olvidaste tu contraseña?",
                  style: TextStyle(
                      color: Color(0xffAD8B19),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 45.0,
              child: TextButton(
                style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffAD8B19)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:  BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: FirstViewBarber(),
                          type: PageTransitionType.rightToLeft));

                },


                /*async {

                  if(_formKey.currentState.validate()){
                    dynamic result = await _auth.signInWithEmailAndPassword(_email, _password);
                    return FirstView();
                  }
                },*/
                child: Text(
                  "Inicia Sesíon",
                  style: TextStyle(color: Colors.white, fontSize: 16.0,
                      fontFamily: "BAHNSCHRIFT"),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _myPreferences.init().then((value) {
      setState(() {
        _myPreferences = value;
      });
    });
  }
}
