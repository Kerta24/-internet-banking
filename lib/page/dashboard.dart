import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Dashboard(),
    ),
  );
}

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
        body: Container(
            alignment: AlignmentDirectional.center,
            child: Column(
              children: [_Profil()],
            )),
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
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 247, 247, 247),
      border: Border.all(color: Colors.black, width: 2.0),
    ),
    child: Column(
      children: <Widget>[
        Row(
          children: [
            Container(
                width: 200, child: Image.asset("assets/images/Kerta.JPG")),
            Container(
              child: Column(
                children: [
                  Container(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Nasabah",
                            style: TextStyle(),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Ketut Kerta Hendrawan",
                            style: TextStyle(),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  Container(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Total Saldo Anda",
                            style: TextStyle(),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Rp. 1.000.000.000",
                            style: TextStyle(),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
