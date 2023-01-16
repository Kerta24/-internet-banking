import 'package:flutter/material.dart';
import 'package:my_koprasi/page/dashboard.dart';
import 'package:my_koprasi/page/fitur/tarik.dart';
import 'package:my_koprasi/page/fitur/setor.dart';

void main() {
  runApp(MaterialApp(
    home: tranfer(),
  ));
}

class tranfer extends StatelessWidget {
  const tranfer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
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
              onPressed: () {},
              child: Text('Transfer'),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Tarik()));
                    },
                    child: Text(
                      "Tarik Tunai",
                    )),
                TextButton(onPressed: () {
                   Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Setor()));
                }, child: Text("Setor Tunai"))
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
