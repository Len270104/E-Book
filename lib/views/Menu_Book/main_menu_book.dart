import 'package:flutter/material.dart';

class Menu_books extends StatelessWidget {
  const Menu_books({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.blue,
        title: const Text(
          "Menu Book",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: const Row(
        children: [
          SizedBox(
            child: Text("My Menu Book"),
          )
        ],
      ),
    );
  }
}
