import 'package:flutter/material.dart';
import 'package:my_koprasi/page/fitur/setor.dart';
import 'package:my_koprasi/page/fitur/tarik.dart';
import 'package:my_koprasi/page/fitur/transfer.dart';
import 'package:my_koprasi/page/loginregister/login.dart';
import 'package:my_koprasi/page/profile.dart';
import 'package:my_koprasi/page/qrcode/qrcode.dart';
import 'package:my_koprasi/references/user_references.dart';
import 'package:my_koprasi/model/list_user_model.dart';

class Dashboard extends StatefulWidget {
  const Dashboard();

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _references = UserReferences();

  String? nama;
  double? saldo;

  void getRefrence() async {
    nama = await _references.getNama();
    saldo = await _references.getSaldo();
    setState(() {
      nama = nama;
      saldo = saldo;
    });
    // print(nama);
    // print(saldo);
  }

  void setSaldo() async {
    saldo = await _references.getSaldo();
    setState(() {
      saldo = saldo;
    });
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getRefrence();
  // }
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getRefrence();
    });
    return FutureBuilder(builder: (context, snapshoot) {
      if (nama != null) {
        return MaterialApp(
            home: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    setSaldo();
                  },
                  icon: Icon(Icons.circle, color: Colors.white)),
              IconButton(
                onPressed: () {
                  setState(() {
                    _references.setNullAllData();
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                icon: const Icon(Icons.logout),
              ),
            ],
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
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                alignment: AlignmentDirectional.center,
                child: Column(
                  children: [
                    _Profil(),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                      // padding: EdgeInsetsDirectional.all(0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      height: 400,
                      child: Fitur(),
                    ),
                    Telephone(),
                    // Fitur(),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => qrcode()));
            },
            backgroundColor: Color.fromARGB(255, 3, 5, 112),
            child: Icon(Icons.qr_code),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 241, 241, 241),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 3, 4, 105),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon:
                      Icon(Icons.person, color: Color.fromARGB(255, 3, 4, 105)),
                  label: 'Profile')
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: (int index) {
              switch (index) {
                case 0:
                  // only scroll to top when current index is selected.

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));

                  break;
                case 1:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                  break;
              }
              setState(
                () {
                  _selectedIndex = index;
                },
              );
            },
          ),
        ));
      } else {
        return Scaffold(body: Center(child: const CircularProgressIndicator()));
      }
    });
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
                    "assets/images/UNDIKSHA.png",
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
                                    child: Text(nama!)),
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
                                padding:
                                    EdgeInsets.only(left: 10.0, bottom: 10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "RP. ${saldo!.toString()}",
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
}

//Widget FItur
class Fitur extends StatelessWidget {
  // const Fitur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        child: GridView.count(
          // primary: false,
          padding: const EdgeInsets.all(10.0),
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          crossAxisCount: 3,
          children: <Widget>[
            // _fiturChard(title: "Cek Saldo", icon: Icons.attach_money_outlined, warna: Color.fromARGB(255, 9, 23, 153)),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => tranfer()));
              },
              child: _fiturChard(
                  title: "Tranfer Tunai",
                  icon: Icons.monetization_on,
                  warna: Color.fromARGB(255, 9, 23, 153)),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Tarik()));
              },
              child: _fiturChard(
                  title: "Tarik Tunai",
                  icon: Icons.payment,
                  warna: Color.fromARGB(255, 9, 23, 153)),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Setor()));
              },
              child: _fiturChard(
                  title: "Setor Tunai",
                  icon: Icons.payments_rounded,
                  warna: Color.fromARGB(255, 9, 23, 153)),
            ),

            // _fiturChard(title: "Deposito", icon: Icons.money_off_csred_rounded, warna: Color.fromARGB(255, 9, 23, 153)),
            // _fiturChard(title: "Mutasi", icon: Icons.grid_off_sharp, warna: Color.fromARGB(255, 9, 23, 153)),
          ],
        ),
      ),
    ));
    //g;
  }
}

//Fungction Chart
class _fiturChard extends StatelessWidget {
  _fiturChard({required this.title, required this.icon, required this.warna});

  String title;
  IconData icon;
  Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          // color: Colors.blue
          ),
      // padding: EdgeInsets.only(top: 10),
      child: Card(
          //menambahkan bayangan
          elevation: 5,
          color: Color.fromARGB(255, 218, 216, 216),
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      // width: 100,
                      // height: 100,

                      child: Icon(
                        icon,
                        size: 50,
                        color: warna,
                      )),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Text(
                    title,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

Widget Telephone() {
  return Container(
    // height: 200,
    decoration: BoxDecoration(color: Color.fromRGBO(33, 149, 243, 0.315)),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
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
  );
}
