import 'package:flutter/material.dart';
import 'package:my_koprasi/page/dashboard.dart';
import 'package:my_koprasi/page/loginregister/login.dart';


class register extends StatefulWidget {
  const register();

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 10, 1, 134),
          title: const Text("Register"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nama',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nim',
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:  Color.fromARGB(255, 10, 1, 134),
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                 
                },
                child: const Text("Register"),
              ),
              SizedBox(height: 30),
              Text("Sudah mempunyai akun?"),
              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => LoginScreen()));
                                      },
                                      child: Text(
                                        "Login",
                                      )),
                                  TextButton(
                                      onPressed: (null),
                                      child: Text("Lupa Pasword"))
                                ],
                              )
            ],
          ),
        ),
      ),
    );
  }
}