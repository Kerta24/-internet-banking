import 'package:flutter/material.dart';
import 'package:my_koprasi/page/dashboard.dart';
import 'package:my_koprasi/page/fitur/tarik.dart';
import 'package:my_koprasi/page/fitur/setor.dart';
import 'package:my_koprasi/services/list_users_service.dart';
import 'package:my_koprasi/references/user_references.dart';

class tranfer extends StatefulWidget {
  @override
  State<tranfer> createState() => _tranferState();
}

class _tranferState extends State<tranfer> {
  final _services = UsersServices();

  final _references = UserReferences();

  final _rekeningController = TextEditingController();

  final _tranferController = TextEditingController();

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
        title: Text('Transfer'),
      ),
      body: Center(
        child: Column(
          children: [
            // Text('Transfer'),
            _Formtf(),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 10, 1, 134),
                onPrimary: Colors.white,
              ),
              onPressed: () async {
                await _services
                    .transfer(
                        userId: id!,
                        nominal: _tranferController.text,
                        rekeningTujuan: _rekeningController.text)
                    .then((value) {
                 // final berhasil = SnackBar(
                  //   content: const Text('Berhasil Transfer'),
                  //   action: SnackBarAction(
                  //     label: 'Kembali Ke Beranda',
                  //     onPressed: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => Dashboard()));
                  //     },
                  //   ),
                  // );
                  // ScaffoldMessenger.of(context).showSnackBar(berhasil);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                  print('Berhasil');
                });
                // }).onError((error, stackTrace) {
                //   print('Tidak Berhasil');
                // });
              },
              child: Text('Transfer'),
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
                          MaterialPageRoute(builder: (context) => Setor()));
                    },
                    child: Text("Setor Tunai"))
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Widget _Formtf() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextFormField(
            controller: _rekeningController,
            decoration: InputDecoration(
              labelText: 'Nomor Rekening',
              hintText: 'Masukan Nomor Rekening',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _tranferController,
            decoration: InputDecoration(
              labelText: 'Jumlah Transfer',
              hintText: 'Masukan Jumlah Transfer',
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
