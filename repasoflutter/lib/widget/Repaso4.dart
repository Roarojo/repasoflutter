

import 'package:flutter/material.dart';

class Repaso4 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Clase();
  }
}

class Clase extends State<Repaso4>{
  final TextEditingController usuario = TextEditingController();
  final TextEditingController Password = TextEditingController();

  final _key = GlobalKey<FormState>();


void Hacer(){
  String u =usuario.text;
  String p = Password.text;
  final snackBar;
  if (u.isEmpty || p.isEmpty){
     snackBar = SnackBar(content: Text('Datos vacios'));;
  }else{
     snackBar = SnackBar(content: Text('$u $p'));
  }

  ScaffoldMessenger.of(context).showSnackBar(snackBar);

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica con FORM'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: usuario,
                    decoration: InputDecoration(
                      labelText: 'Escribe el usuario',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      final letrasRegex = RegExp(r'^[a-zA-Z]+$');
                      if (value == null  || value.isEmpty){
                        return 'Datos vacios';
                      }else if (letrasRegex.hasMatch(value)){
                        
                      }else{
                        return 'Usuario no valido';
                      }
                    },
                  ),
                  TextFormField(
                    controller: Password,
                    decoration: InputDecoration(
                      labelText: 'Escribe el Password',
                      border: OutlineInputBorder(),
                    ),
                     validator: (value){
                      final numerosRegex = RegExp(r'^[0-9]+$');
                      if (value == null  || value.isEmpty){
                        return 'Datos vacios';
                      }else if (numerosRegex.hasMatch(value)){
                        
                      }else{
                        return 'Password no valido';
                      }
                    },
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        if (_key.currentState!.validate()){
                        
                          
                        }else{
                          print('error');
                        }
                      }, 
                      child:Text('Aceptar'),
                      ),
                  ),
                ],
            ),
            ),
        ),
      ),
    );
  }
}