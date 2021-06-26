import 'package:flutter/material.dart';
import 'package:video_app/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      icon: Icon(Icons.person),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "Forget Password ?",
                    style: TextStyle(
                        color: Colors.blue, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.right,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 32.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Text("Cancle"),
                            style: TextButton.styleFrom(
                                minimumSize: Size(120.0, 30.0),
                                backgroundColor: Colors.red),
                            autofocus: true),
                        SizedBox(
                          width: 50.0,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, MyRoutes.homeRoute);
                            },
                            child: Text("Login"),
                            style: TextButton.styleFrom(
                              minimumSize: Size(120.0, 30.0),
                            ),
                            autofocus: true),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
