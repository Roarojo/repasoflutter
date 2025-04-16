

import 'package:flutter/material.dart';

class Repaso2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Clase();
  }
}

class Clase extends State<Repaso2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
  children: [
    Container(
      height: 400,
      padding: EdgeInsets.all(20),
      color: Colors.blue,
      width: double.infinity,
      child: Center(
        child: Text('Hola mundo',
        style: TextStyle(
          fontFamily: 'Arial',
          fontSize: 24,
          color: const Color.fromARGB(255, 223, 222, 221),
        ),
        ),
        ),
    ),
    Container(
      height: 600,
      padding: EdgeInsets.all(20),
      color: const Color.fromARGB(255, 232, 235, 237),
      width: double.infinity,
      child: Center(
        child: Text('Hola que hace',
        style: TextStyle(
          fontFamily: 'Arial',
          fontSize: 24,
          color: const Color.fromARGB(255, 8, 8, 8),
        ),
        ),
        ),
    ),
    Container(
      height: 200,
      padding: EdgeInsets.all(20),
      color: const Color.fromARGB(255, 55, 64, 71),
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hola otra vez',
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 24,
              color: const Color.fromARGB(255, 236, 10, 10),
            ),
            ),
            Text('Hola otra vez',
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 24,
              color: const Color.fromARGB(255, 236, 10, 10),
            ),
            ),
          ],
        ),
        ),
    ),
      ],
      ),
    );
  }

}