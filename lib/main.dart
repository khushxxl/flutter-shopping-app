import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/screens/cart_page.dart';
import 'package:flutter_shopping_app/screens/homepage.dart';
import 'package:flutter_shopping_app/screens/login_page.dart';
import 'package:flutter_shopping_app/utils/routes.dart';

import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      // theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.cartPageRoute: (context) => CartPage(),
      },
    );
  }
}
