import 'package:flutter/material.dart';
import 'package:my_koprasi/page/dashboard.dart';
import 'package:my_koprasi/page/fitur/tarik.dart';
import 'package:my_koprasi/page/fitur/transfer.dart';
import 'package:my_koprasi/services/list_users_service.dart';
import 'package:my_koprasi/references/user_references.dart';

class Setor extends StatefulWidget {

  

  @override
  State<Setor> createState() => _SetorState();
}

class _SetorState extends State<Setor> {

  
  final _services = UsersServices();

  final _references = UserReferences();

  final _setorController = TextEditingController();

  String? id;

void getRefrence() async {
    id = await _references.getUserId();
}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRefrence();
  }

  @override
  Widget build(BuildContext context) {
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
        title: Text('Setor Tunai'),
      ),
      body: Center(
        child: Column(
          children: [
            // Text('Transfer'),
            _Formtr(),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 10, 1, 134),
                onPrimary: Colors.white,
              ),
              onPressed: () {

                _services.setoran(userId: id!, nominal: _setorController.text).then((value) {
                  if(value == true){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  }
                },onError: (error, stactrace){
                  print('Tidak dapat menyetor tunai');
                });

              },
              child: Text('Setor'),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tarik()));
                    },
                    child: Text(
                      "Tarik Tunai",
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => tranfer()));
                    },
                    child: Text("Tranfer Tunai"))
              ],
            )
          ],
        ),
      ),
    ));
  }

  Widget _Formtr() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Jumlah Setor Tunai',
              hintText: 'Masukan Jumlah Setor Tunai',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
