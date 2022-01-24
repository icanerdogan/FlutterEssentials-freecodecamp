import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            /*DrawerHeader(
                child: Text('Hi I ama a drawer.'),
                decoration: BoxDecoration(color: Colors.purple),
            ),*/
            UserAccountsDrawerHeader(
              accountName: Text("İbrahim  Can Erdoğan"),
              accountEmail: Text("ibrahim@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("İbrahim Can Erdoğan"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("ibrahim@gmail.com"),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      );
  }

}