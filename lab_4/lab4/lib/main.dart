import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Список элементов"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(title: Text("2 ^ $index = ${pow(2, index)}"));
          },
        ),
      ),
    );
  }
}
