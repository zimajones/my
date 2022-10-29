// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my/main.dart';

void main() {
  runApp(const myReading());
}

// ignore: camel_case_types
class myReading extends StatelessWidget {
  const myReading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("What I'm Reading"),
      ),
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/dune.jpeg'),
        ],
      ),
    );
  }
}
