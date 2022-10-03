import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 1, 99),
          title: Center(
              child: Text(
            "Kooprasi Undiksha",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'HelveticaNeue',
            ),
          )),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                  width: 200,
                  child: Image.asset("assets/images/UNDIKSHA.png"),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 247, 247),
                    border: Border.all(color: Colors.black, width: 2.0),
                  ),
                  child: Column(
                    children: [
                      _TextField(),
                      _LoginButton(context),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _TextField() {
  return Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.only(top: 5)),
      TextFormField(
        decoration: InputDecoration(
            // border: Border.all(color: Colors.black),
            // border: UnderlineInputBorder(),
            // enabledBorder: UnderlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black)),
            // focusedBorder: UnderlineInputBorder(
            //     borderSide: BorderSide(color: Colors.white, width: 3.0)),
            hintText: "Masukan Username",
            hintStyle: TextStyle(color: Colors.black)),
        style: TextStyle(color: Colors.black),
        autofocus: false,
      ),
      Padding(padding: EdgeInsets.only(top: 12.0)),
      TextFormField(
        decoration: InputDecoration(
            // border: UnderlineInputBorder(),
            // enabledBorder: UnderlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black)),
            // focusedBorder: UnderlineInputBorder(
            //     borderSide: BorderSide(color: Colors.white, width: 3.0)),
            hintText: "Masukan Password",
            hintStyle: TextStyle(color: Colors.black)),
        style: TextStyle(color: Colors.black),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

Widget _LoginButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(padding: EdgeInsets.only(top: 16, bottom: 20)),
      // InkWell(
      //   child: Container(
      //     padding: EdgeInsets.symmetric(vertical: 8.0),
      //     width: 200,
      //     child: Text(
      //       "Login",
      //       style: TextStyle(color: Colors.white),
      //       textAlign: TextAlign.center,
      //     ),
      //     decoration: BoxDecoration(
      //       color: Color.fromARGB(255, 1, 28, 75),
      //       borderRadius: BorderRadius.circular(30.0),
      //     ),
      //   ),
      // ),
      ElevatedButton(
        onPressed: () {},
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
