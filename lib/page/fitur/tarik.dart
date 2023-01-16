import 'package:flutter/material.dart';
import 'package:my_koprasi/page/dashboard.dart';
import 'package:my_koprasi/page/fitur/transfer.dart';
import 'package:my_koprasi/page/fitur/setor.dart';

class Tarik extends StatefulWidget {
  const Tarik();

  @override
  State<Tarik> createState() => _TarikState();
}

class _TarikState extends State<Tarik> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 1, 134),
        title: Text('Tarik'),
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
                
              },
              child: Text('Tarik'),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => tranfer()));
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

 Widget _Formtr() {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Jumlah Penarikan',
            hintText: 'Masukan Jumlah Penarikan',
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