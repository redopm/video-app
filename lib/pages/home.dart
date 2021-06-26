import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chhota-Mota"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome To Chhota-Mota Business"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
