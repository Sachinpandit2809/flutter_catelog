import "package:flutter/material.dart";
import "package:flutter_catelog/utils/routes.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        //     child: Center(
        //   child: Text("LOgin Page",
        //       style: TextStyle(
        //           fontSize: 40, color: Colors.green, fontWeight: FontWeight.bold)),
        // )
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/logImg1.png",
                fit: BoxFit.cover,
                // height: 80,
              ),
              SizedBox(height: 20), //this is used to space padding
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 78, 66, 236)),
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text(
                  "login",
                  style: TextStyle(fontSize: 18),
                ),
                style: TextButton.styleFrom(minimumSize: Size(150, 47)),
                onPressed: () {
                  Navigator.pushNamed(context, Myroutes.homeRoute);
                  print("hii clicked");
                },
              )
            ],
          ),
        ));
  }
}
