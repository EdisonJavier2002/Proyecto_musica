import 'package:flutter/material.dart'; //Material, es un template de diseño

class Cat1 extends StatelessWidget{ // crear una clase con  herencia del template
  @override
  Widget build(BuildContext context){ // construir el widget principal
    return MaterialApp(
      title: "Mi APP",
      home: Scaffold(
        appBar: AppBar(
          title: Text( "Mi primera app"),
          backgroundColor: const Color.fromARGB(255, 30, 128, 255),
        ),
        body: SingleChildScrollView( // Envuelve el Column en un SingleChildScrollView ´para desplazamiento de pantalla
          child:
          Column(children:[
          SizedBox(height: 30), // Dar espacio vertical
          Text("Mi primera app"),
          SizedBox(height: 20), 
          Image.network("https://media.licdn.com/dms/image/v2/D5622AQHbYMQwOqdIFA/feedshare-shrink_800/feedshare-shrink_800/0/1719049264172?e=2147483647&v=beta&t=7VXS9WRxjgAi-c0W9S6a7pK2mxX1_b-lAWWL-OlXJyg"),
          Text("Estoy validando el column"),
          Row(children: [
            Expanded(child: Text("Configuracion de WiFi")),
            Switch(value: true, onChanged: (value){})
          ],),
          Row(children: [
            Expanded(child: Text("Configuracion de Routes")),
            Switch(value: true, onChanged: (value){})
          ],),
          Row(children: [
            SizedBox(width: 100,), // Dar espacio horizontal, para hacer las separaciones entre botones
            Expanded(
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text("Aceptar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 57, 172, 0),
                  foregroundColor: Colors.white
                ),
                )),
            SizedBox(width: 100,),
            Expanded(
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text("Cancelar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 243, 37, 33),
                  foregroundColor: Colors.white
                ),
                )),
            SizedBox(width: 100,),
          ],),
          //pueba de esoacio row
          Row(children: [
            Expanded(child: Text("Configuracion de WiFi")),
            Switch(value: true, onChanged: (value){})
          ],),
          Row(children: [
            Expanded(child: Text("Configuracion de Routes")),
            Switch(value: true, onChanged: (value){})
          ],),
          Row(children: [
            SizedBox(width: 100,), // Dar espacio horizontal, para hacer las separaciones entre botones
            Expanded(
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text("Aceptar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 57, 172, 0),
                  foregroundColor: Colors.white
                ),
                )),
            SizedBox(width: 100,),
            Expanded(
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text("Cancelar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 243, 37, 33),
                  foregroundColor: Colors.white
                ),
                )),
            SizedBox(width: 100,),
          ],),//FIN PRUEBA ESPACIO ROW

          //jhsdhjhdshjsdjhdshjdhjdf
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Primera columna
              Column(
                children: [
                  Image.network("https://via.placeholder.com/100", width: 80, height: 80),
                  SizedBox(height: 10),
                  Text("Texto 1"),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: () {}, child: Text("Botón 1")),
                ],
              ),
              // Segunda columna
              Column(
                children: [
                  Image.network("https://via.placeholder.com/100", width: 80, height: 80),
                  SizedBox(height: 10),
                  Text("Texto 2"),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: () {}, child: Text("Botón 2")),
                ],
              ),
              // Tercera columna
              Column(
                children: [
                  Image.network("https://via.placeholder.com/100", width: 80, height: 80),
                  SizedBox(height: 10),
                  Text("Texto 3"),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: () {}, child: Text("Botón 3")),
                ],
              ),
            ],
          ),
          //jhhjdshjdjhjhsdjhdfjhbdjbhfdjhbfd

          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Primera columna
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.info, color: Colors.blue),
                    SizedBox(width: 8),
                    Text("Título 1"),
                  ],
                ),
                Container(
                  color: Colors.blue,
                  height: 60,
                  width: 100,
                  child: Center(child: Text("Imagen")),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Ver más")),
              ],
            ),
            // Segunda columna
            Column(
              children: [
                Row(
                  children: [
                    Text("Texto largo de ejemplo en 2 líneas"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.image, color: Colors.blue),
                    Icon(Icons.image, color: Colors.blue),
                  ],
                ),
                ElevatedButton(onPressed: () {}, child: Text("Ver más")),
              ],
            ),
            // Tercera columna
            Column(
              children: [
                Container(
                  color: Colors.blue,
                  height: 60,
                  width: 100,
                  child: Center(child: Text("Imagen")),
                ),
                Row(
                  children: [
                    Text("Descripción breve"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("Comprar")),
                  ],
                ),
              ],
            ),
          ],
        ),

        //hghjyhjdkkdjfkjdfkjfd
        Column(
        children: [
          // Primera fila con dos columnas
          Row(
            children: [
              // Columna de texto
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Encabezado", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Descripción breve", style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
              // Columna de imagen
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  child: Center(child: Text("Imagen")),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          // Segunda fila con imagen y fila de botones
          Column(
            children: [
              Container(
                color: Colors.blue,
                height: 120,
                width: double.infinity,
                child: Center(child: Text("Imagen grande")),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Botón 1")),
                  ElevatedButton(onPressed: () {}, child: Text("Botón 2")),
                  ElevatedButton(onPressed: () {}, child: Text("Botón 3")),
                ],
              ),
            ],
          ),
        ],
      ),





        ],),)
      ), //Primer elemento visual
    ); // llamado al template
    
  }
}