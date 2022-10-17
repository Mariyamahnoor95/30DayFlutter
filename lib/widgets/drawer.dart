import 'package:flutter/material.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          // DrawerHeader(
          //   child: Text(
          //     "Dashboard: i m drawer",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   decoration:
          //       BoxDecoration(color: Color.fromARGB(255, 79, 46, 100)),
//             // ),
          UserAccountsDrawerHeader(
              accountName: Text(" Mariyam"),
              accountEmail: Text("azhhbh@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/mahnoor.JPG"),
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("example@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("example@gmail.com"),
            trailing: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
