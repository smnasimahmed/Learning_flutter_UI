// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "by Codepur";

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 78),
          child: Text("Catalog App"),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("This is inside cataloge app", style: TextStyle(fontSize: 20)),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
