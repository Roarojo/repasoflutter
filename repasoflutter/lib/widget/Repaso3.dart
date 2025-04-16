


import 'package:flutter/material.dart';

class Repaso3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Clase();
  }
}

class Clase extends State<Repaso3>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica con Card'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     SizedBox(
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Escribe el usuario',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Escribe la contraseña',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){}, 
                          child: Text('Aceptar'),
                          ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          ),
      ),
    );
  }
}