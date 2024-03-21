import "package:flutter/material.dart";
import "package:flutter_catelog/utils/routes.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if ((_formKey.currentState!.validate())) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/heyLogin.png",
                  fit: BoxFit.cover,
                  // height: 80,
                ),
                SizedBox(height: 20), //this is used to space padding
                Text(
                  "Welcome ${username}",
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          // this is for desine the upeer welcome effect!
                          username = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 35 : 8),
                  child: InkWell(
                    splashColor: Colors.red,
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changeButton ? 50 : 150,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done)
                          : Text(
                              "login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
