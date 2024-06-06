import 'package:flutter/material.dart';

class Home_display extends StatelessWidget {
  const Home_display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 210, 0, 0),
        title: const Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: const Row(
        children: [
          SizedBox(
            child: Text("Home"),
          )
        ],
      ),
    );
  }
}
