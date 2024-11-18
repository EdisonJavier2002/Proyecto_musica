import 'package:flutter/material.dart'; //Material, es un template de diseño

class Login extends StatelessWidget { //creamos la clase login
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Iniciar Sesión !!"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Iniciar sesion"),
          onPressed: (){
            Navigator.pushNamed(context, "/menu");
          },  
        ), 
      ),
    );

  }
}