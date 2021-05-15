import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/widgets/myDrawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App "),
      ),
      body: Center(
        child: Container(
          child: Text("Flutter Revision 2.0"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
