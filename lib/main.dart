import 'package:aplikasi1/page/dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi1/login.dart';

void main() {
  runApp(
    MaterialApp(
      home: LoginScreen(),
    ),
  );
}

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: const FirebaseOptions(
//         apiKey: "AIzaSyDw4VnlvNYVsc1jB_PJcj6zxWjwRtOjHGw",
//         authDomain: "aplikasi-koperasi-eeb64.firebaseapp.com",
//         projectId: "aplikasi-koperasi-eeb64",
//         storageBucket: "aplikasi-koperasi-eeb64.appspot.com",
//         messagingSenderId: "876743140978",
//         appId: "1:876743140978:web:840f23ceda85345eb344eb"),
//   );

//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Check(),
//       // home: FutureBuilder(
//       //   builder: (context, snapshot) {
//       //     if (snapshot.connectionState != ConnectionState.done) {
//       //       return const Home();
//       //     }
//       //     return const Login();
//       //   },
//       // ),
//     ),
//   );
// }

// class Check extends StatefulWidget {
//   const Check({super.key});

//   @override
//   State<Check> createState() => _CheckState();
// }

// class _CheckState extends State<Check> {
//   final _initizilitation = Firebase.initializeApp(
//       options: const FirebaseOptions(
//     apiKey: "AIzaSyBw4Sn43IEekOd0qaph29_0iZEtqLRp6uY",
//     authDomain: "kooprasi-bank.firebaseapp.com",
//     projectId: "kooprasi-bank",
//     storageBucket: "kooprasi-bank.appspot.com",
//     messagingSenderId: "439892138504",
//     appId: "1:439892138504:web:b0a6bebb50f02edd570fbd",
//     measurementId: "G-2XS4CC4EH7",
//   ));

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: _initizilitation,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState != ConnectionState.done) {
//           return Dashboard();
//         }
//         return LoginScreen();
//       },
//     );
//   }
// }
