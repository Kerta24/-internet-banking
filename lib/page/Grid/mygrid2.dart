// ignore_for_file: avoid_unnecessary_containers

import "package:flutter/material.dart";
import 'package:my_koprasi/model/list_user_model.dart';
import 'package:my_koprasi/services/list_users_service.dart';

class MyGrid2 extends StatefulWidget {
  const MyGrid2({Key? key}) : super(key: key);

  @override
  State<MyGrid2> createState() => _MyGrid2State();
}

class _MyGrid2State extends State<MyGrid2> {
  //1. buat variabel list user model
  List<UserModel> _listUser = [];

  //2. buat fungsi get data user
  getUsers() async {
    UsersServices _service = UsersServices();
  }

  @override
  void initState() {
    //3. panggil fungsi get data user
    getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Users"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: _listUser.length,
                  itemBuilder: (context, index) {
                    UserModel data = _listUser[index];
                    return ListTile(
                      // leading: CircleAvatar(
                      //   backgroundImage: NetworkImage(data.avatar!),
                      // ),

                      title: Text(data.username),
                      subtitle: Text(data.nama),
                      trailing: Text(
                        data.userId.toString(),
                        style: const TextStyle(fontSize: 10),
                      
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  // Widget cardlist(
  //     String title, String subtitle, Color color, String nilai, Color bgColor) {
  //   return Card(
  //     color: bgColor,
  //     child: ListTile(
  //       title: Text(title,
  //           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
  //       subtitle: Text(subtitle),
  //       trailing: Container(
  //         height: 50,
  //         width: 50,
  //         color: color,
  //         child: Center(
  //           child: Text(nilai,
  //               style: const TextStyle(
  //                   fontSize: 25,
  //                   color: Colors.white,
  //                   fontWeight: FontWeight.bold)),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget gridText(String nilai) {
  //   return Center(
  //     child: Text(
  //       nilai,
  //       style: const TextStyle(
  //         fontSize: 60,
  //         color: Colors.white,
  //         fontWeight: FontWeight.bold,
  //       ),
  //     ),
  //   );
  // }
}
