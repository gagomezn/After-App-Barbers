
import 'package:flutter/material.dart';



class BarberProfile extends StatefulWidget {

  @override

  State createState() {
    return _BarberProfile();
  }
}
class _BarberProfile extends State<BarberProfile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor:  const Color(0xffAD8B19),
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
              //Navigator.of(context).pushNamed(BarberRegisterPageRoute);
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
                    child: const Text(
                      "Hola",
                      style: (
                        TextStyle(
                          fontFamily: "the-foregen-rough-one",
                          fontSize: 30.0,
                          color: Colors.black,)
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30.0,
                  ),
                  //_loginForm(context),
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
}


