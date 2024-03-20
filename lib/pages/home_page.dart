import "package:flutter/material.dart";

class homePage extends StatelessWidget {
  // const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 31;
    String name = "sachinpandit";
    double pi = 3.14;
    return Scaffold(
      appBar: AppBar(
        title: Text("cateloge App"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome in the $days journey of flutter with ${name}"),
          // child:Text("the value of PI = ${pi}"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
