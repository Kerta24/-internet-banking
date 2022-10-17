import 'dart:js';

import 'package:path/path.dart' as Path;
import 'package:aplikasi1/page/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final myUsernameController = TextEditingController();
final myPasswordController = TextEditingController();
String nUsername = "Kerta Hendrawan", nPassword = "12345678";
final _formKey = GlobalKey<FormState>();

class LoginScreen extends StatelessWidget {
  // final myUsernameController = TextEditingController();
  // final myPasswordController = TextEditingController();
  // String nUsername, nPassword;

  // final _formKey = GlobalKey<FormState>();

  @override
  // _LoginScreen createState() => _LoginScreen();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _LoginScreen(),
    );
  }
}

class _LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    final bool isLansCape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            //Jika Landscape
            child: (isLansCape)
                ? Column(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        // padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                        width: mediaQueryWidth * 0.3,
                        height: mediaQueryHeight * 0.3,
                        child: Image.asset("assets/images/UNDIKSHA.png"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(30.0),
                        // width: mediaQueryWidth * 0.8,
                        // height: mediaQueryHeight * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Color.fromARGB(255, 247, 247, 247),
                          border: Border.all(color: Colors.black, width: 2.0),
                        ),
                        child: Column(
                          children: [
                            _TextField(),
                            MaterialButton(
                              minWidth: 85.0,
                              height: 50.0,
                              color: Color.fromARGB(255, 10, 1, 134),
                              textColor: Colors.white,
                              onPressed: () {
                                //cek apakah username = Kerta
                                //cek apakah password = 12345678

                                if (_formKey.currentState!.validate()) {
                                  if (nUsername != myUsernameController.text) {
                                    print("Username Salah");
                                  } else if (nPassword !=
                                      myPasswordController.text) {
                                    print("Password Salah");
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Dashboard()));
                                  }
                                }
                              },
                              child: SizedBox(
                                width: 50,
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            // _LoginButton(context),
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: (null),
                                    child: Text(
                                      "Daftar",
                                    )),
                                TextButton(
                                    onPressed: (null),
                                    child: Text("Lupa Pasword"))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                // Jika Potrait
                : Column(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        // padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                        width: mediaQueryWidth * 0.3,
                        height: mediaQueryHeight * 0.3,
                        child: Image.asset("assets/images/UNDIKSHA.png"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        // margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(30.0),
                        width: mediaQueryWidth * 0.8,
                        height: mediaQueryHeight * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Color.fromARGB(255, 247, 247, 247),
                          border: Border.all(color: Colors.black, width: 2.0),
                        ),
                        child: Column(
                          children: [
                            _TextField(),
                            MaterialButton(
                              minWidth: 85.0,
                              height: 50.0,
                              color: Color.fromARGB(255, 10, 1, 134),
                              textColor: Colors.white,
                              onPressed: () {
                                //cek apakah username = Kerta
                                //cek apakah password = 12345678

                                if (_formKey.currentState!.validate()) {
                                  if (nUsername != myUsernameController.text) {
                                    print("Username Salah");
                                  } else if (nPassword !=
                                      myPasswordController.text) {
                                    print("Password Salah");
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Dashboard()));
                                  }
                                }
                              },
                              child: SizedBox(
                                width: 50,
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            // _LoginButton(context),
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: (null),
                                    child: Text(
                                      "Daftar",
                                    )),
                                TextButton(
                                    onPressed: (null),
                                    child: Text("Lupa Pasword"))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Container(
                color: Color.fromARGB(255, 92, 92, 92),
                height: 20.0,
                child: Column(
                  children: [
                    Center(
                      child: Text("Copyright @2022 by Kerta"),
                    )
                  ],
                ))),
      ),
    );
  }
}

Widget _TextField() {
  // final myUsernameController = TextEditingController();
  // final myPasswordController = TextEditingController();
  // String nUsername, nPassword;
  // final _formKey = GlobalKey<FormState>();

  return Form(
    key: _formKey,
    child: Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 5)),
        // Container(child: Text("Username")),
        TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'please Input Username';
            }
            return null;
          },
          controller: myUsernameController,
          decoration: InputDecoration(
              label: Text("Username"),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
              // label: Text("Username"),
              // labelText: "Username",
              // hintText: "Masukan Username",
              hintStyle: TextStyle(color: Colors.black)),
          style: TextStyle(color: Colors.black),
          autofocus: false,
        ),
        Padding(padding: EdgeInsets.only(top: 12.0)),

        TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'please Input Password';
            }
            return null;
          },
          maxLength: 16,
          // maxLengthEnforced: true,
          controller: myPasswordController,
          obscureText: true,
          decoration: InputDecoration(
              label: Text("Password"),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
              // label: Text("Username"),
              // labelText: "Username",
              // hintText: "Masukan Username",
              hintStyle: TextStyle(color: Colors.black)),
          style: TextStyle(color: Colors.black),
          autofocus: false,
        ),

        SizedBox(
          height: 25,
        )
      ],
    ),
  );
}

// Widget _LoginButton(BuildContext context) {
//   return Column(
//     children: <Widget>[
//       Padding(padding: EdgeInsets.only(top: 16, bottom: 20)),
//       // InkWell(
//       //   child: Container(
//       //     padding: EdgeInsets.symmetric(vertical: 8.0),
//       //     width: 200,
//       //     child: Text(
//       //       "Login",
//       //       style: TextStyle(color: Colors.white),
//       //       textAlign: TextAlign.center,
//       //     ),
//       //     decoration: BoxDecoration(
//       //       color: Color.fromARGB(255, 1, 28, 75),
//       //       borderRadius: BorderRadius.circular(30.0),
//       //     ),
//       //   ),
//       // ),
      // ElevatedButton(
      //   onPressed: () {},
      //   child: SizedBox(
      //     width: 50,
      //     child: Text(
      //       "Login",
      //       style: TextStyle(color: Colors.white),
      //       textAlign: TextAlign.center,
      //     ),
      //   ),
      // ),
//     ],
//   );
// }
