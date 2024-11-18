import 'package:flutter/material.dart';
import 'package:proyecto_musica/categ1.dart';
import 'package:proyecto_musica/categ2.dart';
import 'package:proyecto_musica/login.dart';
import 'package:proyecto_musica/menu.dart'; //Material, es un template de diseño

void main() => runApp(MyApp()); //funcion de arranque (solo va en el archivo main.dart)

class MyApp extends StatelessWidget{ // crear una clase con  herencia del template
  
  @override
  Widget build(BuildContext context){ // construir el widget principal
    return MaterialApp(  //archivo main
      title: "Mi APP",
      initialRoute: "/menu",
      routes: {
        "/": (context) => Login(),
        "/menu": (context) => MenuView(),
        "/categ1": (context) => Cat1(),
        "/categ2": (context) => Cat2(),
      },
    ); // llamado al template  
  }
}