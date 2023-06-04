import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? k}) : super(key: k);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const [
            // Drawer Header
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                accountName:
                    Text('Manish', style: TextStyle(color: Colors.white)),
                accountEmail: Text('cmanish049@gmail.com',
                    style: TextStyle(color: Colors.white)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/4180846?v=4'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home',
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: Colors.white),
              title: Text('Profile',
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.mail, color: Colors.white),
              title: Text('Email me',
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
