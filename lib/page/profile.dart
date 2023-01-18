import 'package:flutter/material.dart';
import 'package:my_koprasi/page/dashboard.dart';
import 'package:my_koprasi/services/list_users_service.dart';
import 'package:my_koprasi/references/user_references.dart';
import 'package:my_koprasi/page/qrcode/qrcode.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _references = UserReferences();

  String? nama;
  String? username;
  double? saldo;
  String? rekening;

  void getRefrence() async {
    username = await _references.getUserName();
    nama = await _references.getNama();
    saldo = await _references.getSaldo();
    rekening = await _references.getNomorRekening();
    setState(() {
      nama = nama;
      saldo = saldo;
      rekening = rekening;
      username = username;
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

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // @override
  @override
  Widget build(BuildContext context) {
    setState(() {
      getRefrence();
    });
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
              icon: Icon(Icons.home, color: Colors.white))
        ],
        backgroundColor: Color.fromARGB(255, 10, 1, 134),
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
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
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text('Email: ${username!}'),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text('Nama: '),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text('Nomor Rekening: ${rekening!}'),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text("Saldo: RP. ${saldo!.toString()}"),
            ),
          ],
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
              icon: Icon(Icons.person, color: Color.fromARGB(255, 3, 4, 105)),
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
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
  }
}
