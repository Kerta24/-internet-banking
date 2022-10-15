import 'package:flutter/material.dart';
import 'package:aplikasi1/login.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            // IconButton(onPressed: (null), icon: (null) )
          ],
          backgroundColor: Color.fromARGB(255, 19, 1, 99),
          title: Center(
              child: Text(
            "Dashboard Kooprasi Undiksha",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'HelveticaNeue',
            ),
          )),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                alignment: AlignmentDirectional.center,
                child: Column(
                  children: <Widget>[
                    _Profil(),
                    _Fitur(),
                    // Container(
                    //     padding: EdgeInsets.all(10.0),
                    //     child: GridView.count(
                    //       crossAxisCount: 3,
                    //       children: [],
                    //     ))

                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(33, 149, 243, 0.315)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text("Butuh Bantuan?")),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "0878-1234-1024",
                                      style: TextStyle(fontSize: 50),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.phone,
                              size: 100,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
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

Widget _Profil() {
  return Container(
    margin: EdgeInsets.all(15.0),
    padding: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      color: Color.fromARGB(255, 247, 247, 247),
      border: Border.all(color: Colors.black, width: 2.0),
    ),
    child: Column(
      children: <Widget>[
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                // width: 100,
                child: Image.asset(
                  "assets/images/Kerta.JPG",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                )),
            Expanded(
              child: Container(
                height: 100,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        margin: EdgeInsets.only(left: 30, right: 20),
                        height: 48,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Nasabah:",
                                    style: TextStyle(),
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                  padding:
                                      EdgeInsets.only(left: 10.0, bottom: 10),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Ketut Kerta Hendrawan",
                                    style: TextStyle(),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      margin: EdgeInsets.only(left: 30, right: 20),
                      height: 48,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 10.0,
                              ),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Total Saldo Anda",
                                style: TextStyle(),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 10.0, bottom: 10),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Rp. 1.000.000.000",
                                style: TextStyle(),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Widget _Fitur() {
  return Container(
    margin: EdgeInsets.all(15.0),
    padding: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      color: Color.fromARGB(255, 247, 247, 247),
      border: Border.all(color: Colors.black, width: 2.0),
    ),
    child: Column(
      children: [
        Row(
          children: [
            _fiturChard(title: "Cek Saldo", icon: Icons.home),
            SizedBox(
              width: 40,
            ),
            _fiturChard(title: "Cek Saldo", icon: Icons.home),
            SizedBox(
              width: 40,
            ),
            _fiturChard(title: "Cek Saldo", icon: Icons.home),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            _fiturChard(title: "Cek Saldo", icon: Icons.home),
            SizedBox(
              width: 40,
            ),
            _fiturChard(title: "Cek Saldo", icon: Icons.home),
            SizedBox(
              width: 40,
            ),
            _fiturChard(title: "Cek Saldo", icon: Icons.home),
          ],
        )
      ],
    ),
    // child: GridView.count(
    //   crossAxisCount: 3,
    //   children: [
    //     _fiturChard(title: "Cek Saldo", icon: Icons.home),
    //     _fiturChard(title: "Cek Saldo", icon: Icons.home),
    //     _fiturChard(title: "Cek Saldo", icon: Icons.home),
    //     _fiturChard(title: "Cek Saldo", icon: Icons.home),
    //   ],
  );
}

class _fiturChard extends StatelessWidget {
  _fiturChard({required this.title, required this.icon});

  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 10),
      child: Card(
          //menambahkan bayangan
          elevation: 5,
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 115,
                      height: 100,
                      child: Icon(
                        icon,
                        size: 100,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
