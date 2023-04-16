// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final userImageUrl="https://avatars.githubusercontent.com/u/111959129?s=400&u=985a630e6d422b9f634dd9348fa1eadaa2da6eef&v=4";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: Colors.deepPurple),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
              accountName: Text("S M Nasim Ahmed"),
              accountEmail: Text("nasimfarsid@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(userImageUrl)),
            )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text("Home", style: TextStyle(color: Colors.white,), textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text("Profile", style: TextStyle(color: Colors.white,), textScaleFactor: 1.2,),
            ),
            Material(
              color: Colors.deepPurple,
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(CupertinoIcons.mail, color: Colors.white),
                  title: Text("Contact Us", style: TextStyle(color: Colors.white,), textScaleFactor: 1.2,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
