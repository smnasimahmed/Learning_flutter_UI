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
          padding: const EdgeInsets.only(left: 78),
          child: Text("Catalog App"),
        ),
      ),

      body: Center(
        child: Container(
          child: Text("Wellcome to $days days of flutter $name"),
        ),
      ),

      drawer: Drawer(),
    );
  }
}
