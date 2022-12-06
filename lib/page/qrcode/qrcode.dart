import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:my_koprasi/page/dashboard.dart';
import 'package:url_launcher/url_launcher.dart';

class qrcode extends StatefulWidget {
  // const qrcode({super.key});

  @override
  State<qrcode> createState() => _qrcodeState();
}
String link = '';

Future<void> _launchUrl() async {
    final Uri _url = Uri.parse(link);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

class _qrcodeState extends State<qrcode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(actions: [
            IconButton(onPressed: () => new Dashboard()  , icon: Icon(Icons.logout_rounded, color: Colors.white))
          ],
          backgroundColor: Color.fromARGB(255, 19, 1, 99),
          title:Text('QR Code Scanner')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () async {
              String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode("#ff6666", "Cancel", false, ScanMode.DEFAULT);
              setState(() {
                link = barcodeScanRes;
              });
            }, child: Text('Scan', style: TextStyle(fontSize: 50),)) ,

            SizedBox(height:40),
            Text(link, style: TextStyle(fontSize: 12.0),),
            ElevatedButton(onPressed: () async {
                                _launchUrl();
                              }, child: const Text("Visit Link"),),
          ],
        ),
        
      ),
      
      
      ),
    );
  }
}




