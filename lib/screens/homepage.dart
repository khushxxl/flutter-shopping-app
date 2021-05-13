import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
      ),
      body: Center(
        child: Container(
          child: Text("Flutter Revision"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
