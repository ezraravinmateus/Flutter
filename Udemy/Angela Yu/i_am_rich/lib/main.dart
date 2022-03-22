import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          centerTitle: true,
          title: Text("I Am Rich"),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: Center(
          child: Image(image: AssetImage('images/diamond.png')),
        ),
      ),
    ),
  );
}
