import 'package:flutter/material.dart';
import 'package:my_koprasi/page/dashboard.dart';
import 'package:my_koprasi/page/fitur/tarik.dart';
import 'package:my_koprasi/page/fitur/transfer.dart';
class Setor extends StatefulWidget {
  const Setor();

  @override
  State<Setor> createState() => _SetorState();
}

class _SetorState extends State<Setor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 1, 134),
        title: Text('Setor'),
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
              child: Text('Setor'),
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
                              builder: (context) => tranfer()));
                }, child: Text("Tranfer Tunai"))
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