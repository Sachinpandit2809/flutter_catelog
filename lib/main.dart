import "package:flutter/material.dart";
import 'package:flutter_catelog/pages/home_page.dart';
import 'package:flutter_catelog/pages/loginPage.dart';
import 'package:flutter_catelog/utils/routes.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  // const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LoginPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        Myroutes.loginRoute: (context) => LoginPage(),
        Myroutes.homeRoute: (context) => homePage(),
      },
    );
  }
}
