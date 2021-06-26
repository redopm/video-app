import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 45.0, vertical: 32.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: Text("Cancle"),
                          autofocus: true),
                      SizedBox(
                        width: 60.0,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text("Login"),
                          autofocus: true),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
